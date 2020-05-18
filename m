Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 517BE1D8842
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 May 2020 21:34:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 21A4B875EB;
	Mon, 18 May 2020 19:34:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0TlmOS56T9ST; Mon, 18 May 2020 19:34:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BE2D8762A;
	Mon, 18 May 2020 19:34:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 171F91BF314
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 19:34:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 12469886A7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 19:34:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tkxe6a4HTtMH for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 May 2020 19:34:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ACDEF8867F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 19:34:23 +0000 (UTC)
IronPort-SDR: T29mfdGmXvQ6aubch2xasEOrpmXO6cwSfSqORHAnaaccijKDL0PIcasYkwGfK/MMFUeR2pqaKE
 iHFZFpp0h5Bw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 12:34:22 -0700
IronPort-SDR: tt1eoPuz7fCciEvUeSjqTZ3yCm7SgLq7O4O9JqaKLgIiUGTttwhDzzlp41zU33X3Vz2o99F6cx
 GutFZuFp3cTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="465870772"
Received: from melassa-mobl1.amr.corp.intel.com (HELO ellie) ([10.212.228.130])
 by fmsmga006.fm.intel.com with ESMTP; 18 May 2020 12:34:22 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Michal Kubecek <mkubecek@suse.cz>, netdev@vger.kernel.org
In-Reply-To: <20200516093317.GJ21714@lion.mk-sys.cz>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516093317.GJ21714@lion.mk-sys.cz>
Date: Mon, 18 May 2020 12:34:22 -0700
Message-ID: <87sgfxox4x.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: Jose.Abreu@synopsys.com, vladimir.oltean@nxp.com, po.liu@nxp.com,
 m-karicheri2@ti.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Michal Kubecek <mkubecek@suse.cz> writes:

> On Fri, May 15, 2020 at 06:29:44PM -0700, Vinicius Costa Gomes wrote:
>> Hi,
>> 
>> This series adds support for configuring frame preemption, as defined
>> by IEEE 802.1Q-2018 (previously IEEE 802.1Qbu) and IEEE 802.3br.
>> 
>> Frame preemption allows a packet from a higher priority queue marked
>> as "express" to preempt a packet from lower priority queue marked as
>> "preemptible". The idea is that this can help reduce the latency for
>> higher priority traffic.
>> 
>> Previously, the proposed interface for configuring these features was
>> using the qdisc layer. But as this is very hardware dependent and all
>> that qdisc did was pass the information to the driver, it makes sense
>> to have this in ethtool.
>> 
>> One example, for retrieving and setting the configuration:
>> 
>> $ ethtool $ sudo ./ethtool --show-frame-preemption enp3s0
>> Frame preemption settings for enp3s0:
>> 	support: supported
>
> IMHO we don't need a special bool for this. IIUC this is not a state
> flag that would change value for a particular device; either the device
> supports the feature or it does not. If it does not, the ethtool_ops
> callbacks would return -EOPNOTSUPP (or would not even exist if the
> driver has no support) and ethtool would say so.

(I know that the comments below only apply if "ethtool-way" is what's
decided)

Cool. Will remove the supported bit.

>
>> 	active: active
>> 	supported queues: 0xf
>> 	supported queues: 0xe
>> 	minimum fragment size: 68
>> 
>> 
>> $ ethtool --set-frame-preemption enp3s0 fp on min-frag-size 68 preemptible-queues-mask 0xe
>> 
>> This is a RFC because I wanted to have feedback on some points:
>> 
>>   - The parameters added are enough for the hardware I have, is it
>>     enough in general?
>> 
>>   - even with the ethtool via netlink effort, I chose to keep the
>>     ioctl() way, in case someone wants to backport this to an older
>>     kernel, is there a problem with this?
>
> I would prefer not extending ioctl interface with new features, with
> obvious exceptions like adding new link modes or so. Not only because
> having new features only available through netlink will motivate authors
> of userspace tools to support netlink but mostly because the lack of
> flexibility and extensibility of ioctl interface inevitably leads to
> compromises you wouldn't have to do if you only implement netlink
> requests.

Agreed. Will send the next version with only the netlink interface, and
let's see who complains.

>
> One example I can see is the use of u32 for queue bitmaps. Perhaps you
> don't expect this feature to be supported on devices with more than 32
> queues (and I don't have enough expertise to tell if it's justified at
> the moment) but can you be sure it will be the case in 10 or 20 years?
> As long as these hardcoded u32 bitmaps are only part of internal kernel
> API (ethtool_ops), extending the support for bigger devices will mean
> some code churn (possibly large if many drivers implement the feature)
> but it's something that can be done. But if you have this limit in
> userspace API, you are in a much bigger trouble. The same can be said
> for adding new attributes - easy with netlink but with ioctl you never
> know if those reserved fields will suffice.

A bit of background for this decision (using u32), frame preemption has
dimishing returns in relation to link speeds, my gut feeling is that for
links faster than 2.5G it stops making sense, at least in Linux, the
measurement noise will hide any latency improvement brought by frame
preemption. And I don't see many 2.5G NICs supporting more than 32
queues.

But I agree that keeping the interface future proof is better. Will
change to expose the queues configuration as bitset.

>
>> 
>>   - Some space for bikeshedding the names and location (for example,
>>     does it make sense for these settings to be per-queue?), as I am
>>     not quite happy with them, one example, is the use of preemptible
>>     vs. preemptable;
>> 
>> 
>> About the patches, should be quite straightforward:
>> 
>> Patch 1, adds the ETHTOOL_GFP and ETHOOL_SFP commands and the
>> associated data structures;
>> 
>> Patch 2, adds the ETHTOOL_MSG_PREEMPT_GET and ETHTOOL_MSG_PREEMPT_SET
>> netlink messages and the associated attributes;
>
> I didn't look too deeply but one thing I noticed is that setting the
> parameters using ioctl() does not trigger netlink notification. If we
> decide to implement ioctl support (and I'm not a fan of that), the
> notifications should be sent even when ioctl is used.

Oh, yeah, that's right. Nice catch.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
