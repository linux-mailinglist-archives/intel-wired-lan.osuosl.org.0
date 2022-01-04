Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B384844F8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jan 2022 16:44:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C5FB60C05;
	Tue,  4 Jan 2022 15:44:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y7SwbhctffPt; Tue,  4 Jan 2022 15:44:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A45660BC1;
	Tue,  4 Jan 2022 15:44:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D44D21BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 15:44:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE012825C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 15:44:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jMHu_Ey39f1t for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jan 2022 15:43:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 73B3C825BF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jan 2022 15:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641311039; x=1672847039;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=22y9EjrBRaMVy/mz9REdCI0A1LxLuq5BPOq8HpG1+gg=;
 b=Lwt1OJwTVHlWoTIDAsW9l7wZH57tSzFsO9SRi2qidRjoB0t0bahmNRa2
 srCzWBSKVJ69dcWGOgkrjNE7e3wSStn9tdrrhKz0dWi8ZGJ/qx1Iq0RLY
 2i8XkAxEN+FXSQTnrYHcRSeG9wt41f6nHVXcYb9HMgYLvfXsjkr1fkvIz
 JtUtPefxH28iKq+iFg0NfI0mOG+6k4zYEGfFY3sto2EZVBUL5F4wiJA79
 ZUk96ff1uy6+hJLeA61TdpRZebavZEYBJaKTJEbqY4p2IzJ3luOAGf6Uc
 TMOxyPqBGBE0uTsofhAxTtzW3876f2I5tPX8l4Nk+SxiOdQ+bBSotootu g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10216"; a="242201238"
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="242201238"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 07:43:58 -0800
X-IronPort-AV: E=Sophos;i="5.88,261,1635231600"; d="scan'208";a="688600650"
Received: from smile.fi.intel.com ([10.237.72.61])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2022 07:43:52 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1n4lxK-006GMj-Qz; Tue, 04 Jan 2022 17:42:34 +0200
Date: Tue, 4 Jan 2022 17:42:34 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jakub Kicinski <kuba@kernel.org>, mingo@kernel.org
Message-ID: <YdRq6vKceOqscaKK@smile.fi.intel.com>
References: <20211229004913.513372-1-kuba@kernel.org>
 <5a82690c-7dc0-81de-4dd6-06e26e4b9b92@gmail.com>
 <20211229092012.635e9f2b@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211229092012.635e9f2b@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2] net: don't include
 filter.h from net/sock.h
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
Cc: linux-s390@vger.kernel.org, linux-nfs@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, netfilter-devel@vger.kernel.org,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-wireless@vger.kernel.org,
 ast@kernel.org, linux-can@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-fsdevel@vger.kernel.org, linux-hams@vger.kernel.org, bpf@vger.kernel.org,
 virtualization@lists.linux-foundation.org, ath11k@lists.infradead.org,
 linux-decnet-user@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Dec 29, 2021 at 09:20:12AM -0800, Jakub Kicinski wrote:
> On Tue, 28 Dec 2021 17:33:39 -0800 Florian Fainelli wrote:
> > It would be nice if we used the number of files rebuilt because of a 
> > header file change as another metric that the kernel is evaluated with 
> > from release to release (or even on a commit by commit basis). Food for 
> > thought.
> 
> Maybe Andy has some thoughts, he has been working on dropping
> unnecessary includes of kernel.h, it seems.

With this [1] announcement I believe Ingo is the best to tell you if this is a
right direction.

> It'd be cool to plug something that'd warn us about significant
> increases in dependencies into the patchwork build bot.
> 
> I have one more small series which un-includes uapi/bpf.h from
> netdevice.h at which point I hope we'll be largely in the clear 
> from build bot performance perspective.

[1]: https://lore.kernel.org/lkml/YdIfz+LMewetSaEB@gmail.com/T/#u

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
