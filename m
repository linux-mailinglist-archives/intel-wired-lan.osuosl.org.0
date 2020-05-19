Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B905E1DA4AA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 00:40:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EF84E20104;
	Tue, 19 May 2020 22:40:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YepLtg-WjHLk; Tue, 19 May 2020 22:40:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ABBBC203FD;
	Tue, 19 May 2020 22:40:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0CCA51BF283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 22:40:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EEACC20104
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 22:40:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uu0pgZT+59SX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 22:40:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id EA4C520012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 22:40:21 +0000 (UTC)
IronPort-SDR: /ORh0eRDI76UhAbmKQO0qQ62wxDovrUXEM1+DHaHAgKfY2kwI1bv+f6I4oUncAk8nnwUgpTuqU
 HMkWxDddWZYA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 15:40:21 -0700
IronPort-SDR: +BN4Yym2B6TWMFv6ypI0zhTt651+8uVBVqZPOLQpuGgIlbagG4URnZ+OfglZBTkQwx6tDtjJ3G
 NafzmltzxugQ==
X-IronPort-AV: E=Sophos;i="5.73,411,1583222400"; d="scan'208";a="268048035"
Received: from twxiong-mobl.amr.corp.intel.com (HELO localhost)
 ([10.254.97.160])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 15:40:19 -0700
MIME-Version: 1.0
In-Reply-To: <87sgfxox4x.fsf@intel.com>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516093317.GJ21714@lion.mk-sys.cz> <87sgfxox4x.fsf@intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Michal Kubecek <mkubecek@suse.cz>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org
Date: Tue, 19 May 2020 15:40:14 -0700
Message-ID: <158992801438.36166.9692784713665851855@twxiong-mobl.amr.corp.intel.com>
User-Agent: alot/0.9
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

Quoting Vinicius Costa Gomes (2020-05-18 12:34:22)
> Hi,
> 
> Michal Kubecek <mkubecek@suse.cz> writes:
> 
> > On Fri, May 15, 2020 at 06:29:44PM -0700, Vinicius Costa Gomes wrote:
> >> Hi,
> >> 
> >> This series adds support for configuring frame preemption, as defined
> >> by IEEE 802.1Q-2018 (previously IEEE 802.1Qbu) and IEEE 802.3br.
> >> 
> >> Frame preemption allows a packet from a higher priority queue marked
> >> as "express" to preempt a packet from lower priority queue marked as
> >> "preemptible". The idea is that this can help reduce the latency for
> >> higher priority traffic.
> >> 
> >> Previously, the proposed interface for configuring these features was
> >> using the qdisc layer. But as this is very hardware dependent and all
> >> that qdisc did was pass the information to the driver, it makes sense
> >> to have this in ethtool.
> >> 
> >> One example, for retrieving and setting the configuration:
> >> 
> >> $ ethtool $ sudo ./ethtool --show-frame-preemption enp3s0
> >> Frame preemption settings for enp3s0:
> >>      support: supported
> >
> > IMHO we don't need a special bool for this. IIUC this is not a state
> > flag that would change value for a particular device; either the device
> > supports the feature or it does not. If it does not, the ethtool_ops
> > callbacks would return -EOPNOTSUPP (or would not even exist if the
> > driver has no support) and ethtool would say so.
> 
> (I know that the comments below only apply if "ethtool-way" is what's
> decided)
> 
> Cool. Will remove the supported bit.
> 
> >
> >>      active: active
> >>      supported queues: 0xf

Following the same rationale, is this 'supported queue' going aways as well?

- Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
