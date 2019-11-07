Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AACEFF3832
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Nov 2019 20:09:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D9BA878A0;
	Thu,  7 Nov 2019 19:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eoS3J7dSyvKF; Thu,  7 Nov 2019 19:09:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BC5E587893;
	Thu,  7 Nov 2019 19:09:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CBD61BF33B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 19:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 48EDA857D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 19:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BSgqC-7RH4ak for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Nov 2019 19:09:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C57EF85C67
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Nov 2019 19:09:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 11:09:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="404209454"
Received: from vcostago-desk1.jf.intel.com (HELO vcostago-desk1)
 ([10.54.70.82])
 by fmsmga006.fm.intel.com with ESMTP; 07 Nov 2019 11:09:14 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
In-Reply-To: <20191106171823.30554-1-jacob.e.keller@intel.com>
References: <20191106171823.30554-1-jacob.e.keller@intel.com>
Date: Thu, 07 Nov 2019 11:10:44 -0800
Message-ID: <87k18btscr.fsf@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [net] igb/igc: use ktime accessors for
 skb->tstamp
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jacob Keller <jacob.e.keller@intel.com> writes:

> When implementing launch time support in the igb and igc drivers, the
> skb->tstamp value is assumed to be a s64, but it's declared as a ktime_t
> value.
>
> Although ktime_t is typedef'd to s64 it wasn't always, and the kernel
> provides accessors for ktime_t values.
>
> Use the ktime_to_timespec64 and ktime_set accessors instead of directly
> assuming that the variable is always an s64.
>
> This improves portability if the code is ever moved to another kernel
> version, or if the definition of ktime_t ever changes again in the
> future.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
