Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC6B2EF749
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jan 2021 19:26:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCECB870BB;
	Fri,  8 Jan 2021 18:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CNNn6HxiJuAB; Fri,  8 Jan 2021 18:26:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B7F687367;
	Fri,  8 Jan 2021 18:26:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B62EF1BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 18:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ACF6A871D5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 18:26:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jNV8P4ggmbH6 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jan 2021 18:26:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0D6A3870BB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 18:26:31 +0000 (UTC)
IronPort-SDR: 8DHf5e7EJ/+6sX7msq5L3NoeEuLg0Mdg2Pi7Q94/824PyX8U5jdAlven9j5/ASuHZrv8ABwjvV
 QU36+dNc2zuQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="165325630"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="165325630"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:26:31 -0800
IronPort-SDR: bnp1s7+11gFdcXaxj5lq/veRhfyI2zhVB/lG3e0cFQ6vBSp+IeCPDPc1Ga51Tz0hIxs/um/GVW
 eJyJMyei0+RQ==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="399061275"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.68.23])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:26:30 -0800
Date: Fri, 8 Jan 2021 10:26:30 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Shannon Nelson <snelson@pensando.io>
Message-ID: <20210108102630.00004202@intel.com>
In-Reply-To: <1e4ee1cf-c2b7-8ba3-7cb1-5c5cb3ff1e84@pensando.io>
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
 <20210106215539.2103688-2-jesse.brandeburg@intel.com>
 <1e4ee1cf-c2b7-8ba3-7cb1-5c5cb3ff1e84@pensando.io>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] net: core: count
 drops from GRO
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jamal Hadi Salim <jhs@mojatatu.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Shannon Nelson wrote:

> On 1/6/21 1:55 PM, Jesse Brandeburg wrote:
> > When drivers call the various receive upcalls to receive an skb
> > to the stack, sometimes that stack can drop the packet. The good
> > news is that the return code is given to all the drivers of
> > NET_RX_DROP or GRO_DROP. The bad news is that no drivers except
> > the one "ice" driver that I changed, check the stat and increment
> =

> If the stack is dropping the packet, isn't it up to the stack to track =

> that, perhaps with something that shows up in netstat -s?=A0 We don't =

> really want to make the driver responsible for any drops that happen =

> above its head, do we?

I totally agree!

In patch 2/2 I revert the driver-specific changes I had made in an
earlier patch, and this patch *was* my effort to make the stack show the
drops.

Maybe I wasn't clear. I'm seeing packets disappear during TCP
workloads, and this GRO_DROP code was the source of the drops (I see it
returning infrequently but regularly)

The driver processes the packet but the stack never sees it, and there
were no drop counters anywhere tracking it.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
