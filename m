Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 502882773A3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Sep 2020 16:09:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 01BD986AD1;
	Thu, 24 Sep 2020 14:09:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5bJZggoPCdG0; Thu, 24 Sep 2020 14:09:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3457886AAB;
	Thu, 24 Sep 2020 14:09:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 27BD41BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 12:46:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 20F6886A8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 12:46:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ssKsNEuFrC5k for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Sep 2020 12:46:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 97D1B869D2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Sep 2020 12:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=H+NuQC2ydn+3c8TeWONHmZD2Wn+Q0rKHcvASi9MJfyg=; b=vRni5o3W+fkqU3HdpPyIx+zJ5z
 cm/15c3T8XFrvxPimIANQdEi8yq9HFFxcHT/7YInRgUf/OKoEn8RBl3/C0Ts8/PiDmCD5TF4D5EG2
 BV1daaMSk7u3u7boeSegr550qSJIEnXI3Jyl7km3dwSLhCajBoVG4hqCDvvVyJT5QqHxOJEqHX0fh
 t4bTk6WweLAlHZCoH5ELkDVCvmvydOWpB1KEuLo6sUA7FKNkBo2uG2VrjFoNMtQYSh7eBMbIxSvbT
 TJeNi1l6M8e/XCCv0baRnaOgkz4uVWt7z3FwVvyF0jxYoYKdkdC7NYatwWyoNxT9YsNQxELwcbOE4
 nIwlf2Hg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLQdg-0007Si-Qk; Thu, 24 Sep 2020 12:46:20 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 42E143060C5;
 Thu, 24 Sep 2020 14:46:20 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id EF0DC20AC5164; Thu, 24 Sep 2020 14:46:19 +0200 (CEST)
Date: Thu, 24 Sep 2020 14:46:19 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nitesh Narayan Lal <nitesh@redhat.com>
Message-ID: <20200924124619.GL2628@hirez.programming.kicks-ass.net>
References: <20200923181126.223766-1-nitesh@redhat.com>
 <20200923181126.223766-2-nitesh@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200923181126.223766-2-nitesh@redhat.com>
X-Mailman-Approved-At: Thu, 24 Sep 2020 14:09:53 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 1/4] sched/isolation: API to get
 housekeeping online CPUs
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
Cc: juri.lelli@redhat.com, linux-pci@vger.kernel.org, jerinj@marvell.com,
 sassmann@redhat.com, vincent.guittot@linaro.org, hch@infradead.org,
 mingo@redhat.com, intel-wired-lan@lists.osuosl.org, helgaas@kernel.org,
 thomas.lendacky@amd.com, mathias.nyman@intel.com, frederic@kernel.org,
 jlelli@redhat.com, jiri@nvidia.com, bhelgaas@google.com,
 mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, mtosatti@redhat.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



FWIW, cross-posting to moderated lists is annoying. I don't know why we
allow them in MAINTAINERS :-(
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
