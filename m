Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E391D8A6A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 00:06:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB75E881DC;
	Mon, 18 May 2020 22:06:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dClX5JzpCibt; Mon, 18 May 2020 22:06:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CF33881EC;
	Mon, 18 May 2020 22:06:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0FEF21BF36B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 22:06:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 027C3221BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 22:06:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J0MpPEjN4O5w for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 May 2020 22:06:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 1627A220DD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 May 2020 22:06:39 +0000 (UTC)
IronPort-SDR: 2KKxzKJ91CmkR/c2c46mGm/hh/Li0ThmA/W4s3x28qyA6L4Q05jVGNXXg3+LjPRMStjLkfF1QS
 89bKpezaBEaQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 15:06:27 -0700
IronPort-SDR: QRwHLMKXm6I8OfddQAqm1mS/rNcakTrgCj3y3343ax2JSY5S7SEJIbtJp+bneB01lmzqsTOFI8
 PGTAdqygyBig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="465908938"
Received: from melassa-mobl1.amr.corp.intel.com (HELO ellie) ([10.212.228.130])
 by fmsmga006.fm.intel.com with ESMTP; 18 May 2020 15:06:26 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20200518135613.379f6a63@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516.133739.285740119627243211.davem@davemloft.net>
 <CA+h21hoNW_++QHRob+NbWC2k7y7sFec3kotSjTL6s8eZGGT+2Q@mail.gmail.com>
 <20200516.151932.575795129235955389.davem@davemloft.net>
 <87wo59oyhr.fsf@intel.com>
 <20200518135613.379f6a63@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Date: Mon, 18 May 2020 15:06:26 -0700
Message-ID: <87h7wcq4nx.fsf@intel.com>
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
 m-karicheri2@ti.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 olteanv@gmail.com, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Jakub Kicinski <kuba@kernel.org> writes:
>
> Please take a look at the example from the cover letter:
>
> $ ethtool $ sudo ./ethtool --show-frame-preemption
> enp3s0 Frame preemption settings for enp3s0:
> 	support: supported
> 	active: active
> 	supported queues: 0xf
> 	supported queues: 0xe
> 	minimum fragment size: 68
>
> Reading this I have no idea what 0xe is. I have to go and query TC API
> to see what priorities and queues that will be. Which IMHO is a strong
> argument that this information belongs there in the first place.

That was the (only?) strong argument in favor of having frame preemption
in the TC side when this was last discussed.

We can have a hybrid solution, we can move the express/preemptible per
queue map to mqprio/taprio/whatever. And have the more specific
configuration knobs, minimum fragment size, etc, in ethtool.

What do you think?


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
