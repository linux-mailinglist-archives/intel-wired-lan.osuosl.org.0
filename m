Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B68376C7D
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 May 2021 00:23:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEEE260618;
	Fri,  7 May 2021 22:23:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QLlquf7il68R; Fri,  7 May 2021 22:23:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B80B260594;
	Fri,  7 May 2021 22:23:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 471391BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 22:23:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 350A160900
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 22:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OluLOO6LCjX4 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 May 2021 22:23:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8CECE608D1
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 May 2021 22:23:45 +0000 (UTC)
IronPort-SDR: 12xVmvOY2i5kHPsSUjSaKZnO5j4uzm28U2rsMe/9eIXkxyUwhw57KqD90yb+zxidkax/MflijB
 +lV1PW3DE01w==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="186278416"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="186278416"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 15:23:43 -0700
IronPort-SDR: wu49lprSn5yTXAGJGa/jXtNxLz73g2TkT2oI8klxsHLSzVmhpbbVNNwUFcg88TjEQZjkucXt0c
 BjWEO+1v3GSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="533849261"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga001.fm.intel.com with ESMTP; 07 May 2021 15:23:41 -0700
Date: Sat, 8 May 2021 00:11:35 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210507221135.GB18159@ranger.igk.intel.com>
References: <20210114143318.2171-1-cristian.dumitrescu@intel.com>
 <CAJ8uoz3YSuPj6F+GHkk6yXHryUEOUhVSg2pDVEVrFA6b8Hgu6g@mail.gmail.com>
 <20210118103233.49bfd205@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210118103233.49bfd205@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/4] i40e: small improvements
 on XDP path
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
Cc: Network Development <netdev@vger.kernel.org>, edwin.verplanke@intel.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Cristian Dumitrescu <cristian.dumitrescu@intel.com>,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>,
 bpf <bpf@vger.kernel.org>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 18, 2021 at 10:32:33AM -0800, Jakub Kicinski wrote:
> On Mon, 18 Jan 2021 08:31:23 +0100 Magnus Karlsson wrote:
> > On Thu, Jan 14, 2021 at 3:34 PM Cristian Dumitrescu
> > <cristian.dumitrescu@intel.com> wrote:
> > >
> > > This patchset introduces some small and straightforward improvements
> > > to the Intel i40e driver XDP path. Each improvement is fully described
> > > in its associated patch.
> > 
> > Thank you for these clean ups Cristian!
> > 
> > For the series:
> > 
> > Acked-by: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> FWIW since this series is 100% driver code I'm expecting it will 
> come downstream via Tony's tree. Please LMK if that's not the case.

I just realized that this set got somewhat abandonded. Tony, can you pick
this? I wouldn't be surprised if it wouldn't apply cleanly anymore since
it has been almost 4 months since the initial submission, but let's see...
Otherwise we probably would have to ask Cristian to re-submit directly to
IWL I guess.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
