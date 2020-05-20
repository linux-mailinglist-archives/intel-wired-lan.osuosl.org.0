Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 476AD1DC17F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 23:42:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCB0987115;
	Wed, 20 May 2020 21:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yF4paep9J78M; Wed, 20 May 2020 21:42:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39E9C8712B;
	Wed, 20 May 2020 21:42:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 204BB1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 21:42:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1BF8187115
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 21:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0NLYwYcatx3s for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2020 21:42:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 84CC38710C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2020 21:42:31 +0000 (UTC)
IronPort-SDR: /hQpsPjdcppKoyhbnQVTognbze8VonFPePxC5iTmLfn4x8nwLMEPyzRz8krBX1Ys/9nV0z4o3M
 JjnC0tyx7nzA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 14:42:30 -0700
IronPort-SDR: SFHmI0WESzRLt1wSE1FSQ6zpEr/u/O2HaexdYcGDlqUpfhIz8TFSyByQFdMh5q3BMU5GkcVA3/
 0N/nvMzIOTEg==
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="255127925"
Received: from djmeffe-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.255.230.216])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 14:42:29 -0700
MIME-Version: 1.0
In-Reply-To: <20200518160906.40e9d8bb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516.133739.285740119627243211.davem@davemloft.net>
 <CA+h21hoNW_++QHRob+NbWC2k7y7sFec3kotSjTL6s8eZGGT+2Q@mail.gmail.com>
 <20200516.151932.575795129235955389.davem@davemloft.net>
 <87wo59oyhr.fsf@intel.com>
 <20200518135613.379f6a63@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87h7wcq4nx.fsf@intel.com>
 <20200518152259.29d2e3c7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <87blmkq1y3.fsf@intel.com>
 <20200518160906.40e9d8bb@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Jakub Kicinski <kuba@kernel.org>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Wed, 20 May 2020 14:42:25 -0700
Message-ID: <159001094525.59702.8769665430201911136@sdkini-mobl1.amr.corp.intel.com>
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
 m-karicheri2@ti.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 olteanv@gmail.com, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Quoting Jakub Kicinski (2020-05-18 16:09:06)
> On Mon, 18 May 2020 16:05:08 -0700 Vinicius Costa Gomes wrote:
> > Jakub Kicinski <kuba@kernel.org> writes:
> > >> That was the (only?) strong argument in favor of having frame preemption
> > >> in the TC side when this was last discussed.
> > >> 
> > >> We can have a hybrid solution, we can move the express/preemptible per
> > >> queue map to mqprio/taprio/whatever. And have the more specific
> > >> configuration knobs, minimum fragment size, etc, in ethtool.
> > >> 
> > >> What do you think?  
> > >
> > > Does the standard specify minimum fragment size as a global MAC setting?  
> > 
> > Yes, it's a per-MAC setting, not per-queue. 
> 
> If standard defines it as per-MAC and we can reasonably expect vendors
> won't try to "add value" and make it per queue (unlikely here AFAIU),
> then for this part ethtool configuration seems okay to me.

Before we move forward with this hybrid approach, let's recap a few points that
we discussed in the previous thread and make sure it addresses them properly.

1) Frame Preemption (FP) can be enabled without EST, as described in IEEE
802.1Q. In this case, the user has to create a dummy EST schedule in taprio
just to be able to enable FP, which doesn't look natural.

2) Mpqrio already looks overloaded. Besides mapping traffic classes into
hardware queues, it also supports different modes and traffic shaping. Do we
want to add yet another setting to it?

Regards,

Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
