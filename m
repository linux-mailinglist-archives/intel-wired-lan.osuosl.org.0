Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148254FC957
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Apr 2022 02:39:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1F6340587;
	Tue, 12 Apr 2022 00:39:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7M2Ek8orBh8t; Tue, 12 Apr 2022 00:38:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90D7F405E0;
	Tue, 12 Apr 2022 00:38:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2FD821BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 00:38:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1CA6A40547
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 00:38:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PIJYnaBCevWp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Apr 2022 00:38:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AF6404053F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Apr 2022 00:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649723932; x=1681259932;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=zdDESkkqaUn/aPwGR2fRNE+tXm7huVy2jT6kk0Wyssc=;
 b=niFO/hVxSN/+cmEOSPL9e/thkzPzAEAfGfxCUQsdQ+R3GBW71jQAaXya
 5dFTtHawJIlbqoUwhn34iHSRPScaPaqNhsB9rnbDILxtJgQswQ/El14y/
 9ZnnenHB22Fw3XhjUvBDpv6TQiwZfHhNqjMmuhGQdNKllwXWpL8gfQeby
 fJokLNEzHsimjzHo05RgJqQLj4FCfnzpdNjzOk+JeM8A0dBPeq1HC5Kpm
 4QPBpxu9/d2OtG6QC/GcMsxyQUm90Ec5FrVntVp9b+gSXLZ6Hgcnff5pT
 09HVRn0+Egqzl6E9nJsUDGtSqn/k4Ts4t74D9jMVq9hC6k6qBtqw0tPah A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="242833218"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="242833218"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 17:38:47 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="551466016"
Received: from vcostago-mobl3.jf.intel.com (HELO vcostago-mobl3)
 ([10.24.14.61])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 17:38:47 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20220412000759.wtsebxkayb5vssvx@skbuf>
References: <20210626003314.3159402-1-vinicius.gomes@intel.com>
 <20210626003314.3159402-3-vinicius.gomes@intel.com>
 <20210627195826.fax7l4hd2itze4pi@skbuf> <874k2zdwp4.fsf@intel.com>
 <20220412000759.wtsebxkayb5vssvx@skbuf>
Date: Mon, 11 Apr 2022 17:38:47 -0700
Message-ID: <87h76zcezs.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 02/12] taprio: Add support
 for frame preemption offload
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> On Mon, Apr 11, 2022 at 04:31:03PM -0700, Vinicius Costa Gomes wrote:
>> > First line in taprio_disable_offload() is:
>> >
>> > 	if (!FULL_OFFLOAD_IS_ENABLED(q->flags))
>> > 		return 0;
>> >
>> > but you said it yourself below that the preemptible queues thing is
>> > independent of whether you have taprio offload or not (or taprio at
>> > all). So the queues will never be reset back to the eMAC if you don't
>> > use full offload (yes, this includes txtime offload too). In fact, it's
>> > so independent, that I don't even know why we add them to taprio in the
>> > first place :)
>>
>> That I didn't change taprio_disable_offload() was a mistake caused in
>> part by the limitations of the hardware I have (I cannot have txtime
>> offload and frame preemption enabled at the same time), so I didn't
>> catch that.
>>
>> > I think the argument had to do with the hold/advance commands (other
>> > frame preemption stuff that's already in taprio), but those are really
>> > special and only to be used in the Qbv+Qbu combination, but the pMAC
>> > traffic classes? I don't know... Honestly I thought that me asking to
>> > see preemptible queues implemented for mqprio as well was going to
>> > discourage you, but oh well...
>>
>> Now, the real important part, if this should be communicated to the
>> driver via taprio or via ethtool/netlink.
>>
>> I don't really have strong opinions on this anymore, the two options are
>> viable/possible.
>>
>> This is going to be a niche feature, agreed, so thinking that going with
>> the one that gives the user more flexibility perhaps is best, i.e. using
>> ethtool/netlink to communicate which queues should be marked as
>> preemptible or express.
>
> So we're back at this, very well.
>
> I was just happening to be looking at clause 36 of 802.1Q (Priority Flow Control),
> a feature exchanged through DCBX where flows of a certain priority can be
> configured as lossless on a port, and generate PAUSE frames. This is essentially
> the extension of 802.3 annex 31B MAC Control PAUSE operation with the ability to
> enable/disable flow control on a per-priority basis.
>
> The priority in PFC (essentially synonymous with "traffic class") is the same
> priority as the priority in frame preemption. And you know how PFC is configured
> in Linux? Not through the qdisc, but through DCB_ATTR_PFC_CFG, a nested dcbnl
> netlink attribute with one nested u8 attribute per priority value
> (DCB_PFC_UP_ATTR_0 to DCB_PFC_UP_ATTR_7).
>
> Not saying we should follow the exact same model as PFC, just saying that I'm
> hard pressed to find a good reason why the "preemptable traffic classes"
> information should sit in a layer which is basically independent of the frame
> preemption feature itself.

Ok, going to take this as another point in favor of going the ethtool
route.


Thank you,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
