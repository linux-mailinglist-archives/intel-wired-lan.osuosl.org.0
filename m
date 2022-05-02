Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA62517261
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 May 2022 17:21:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 01FE483252;
	Mon,  2 May 2022 15:21:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kQAft6jUBkKP; Mon,  2 May 2022 15:21:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FB3182FD5;
	Mon,  2 May 2022 15:21:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B55D1BF39E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 15:21:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0773D60F19
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 15:21:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wBI3gMva16_1 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 May 2022 15:21:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 643C260F17
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 May 2022 15:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651504861; x=1683040861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OGoRJLXfUGAFX55UFghlqSjvmsW3X09waLABavitiJI=;
 b=iNxLnRtcNPfFN4yGDT3Q9guWzAIL/CD4c7KR2pJa2wk1wvDytAKPsRsl
 ThuVk3spTqmhfReCsIuv71A4EDYYHu99BsJ4wlalzAwPyTdQreoJxc53z
 L+BaeStoTxvtotTaaate0hPkoFzuwC8Gtrqt46Zc0g6GTI3+9fPdrParF
 d9BVGdAYSOaEjjlinCO8SFvUGWxmGuJl81e9f4YFvMPhsQ+BVQonNpAy2
 FupK3ZmQC5mHQmIulWlFH7JLAmyA5wIC3UF0ZIrNoXG0XVmiyt2RK31Ao
 tyDqdqY/ABU9gRs5KcvK1GAwZC1gB/xD4MUVcN3UJMCItgIaZPApsPBPb Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="292417562"
X-IronPort-AV: E=Sophos;i="5.91,192,1647327600"; d="scan'208";a="292417562"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2022 08:21:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,192,1647327600"; d="scan'208";a="663565481"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 02 May 2022 08:20:59 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 242FKwJo008502; Mon, 2 May 2022 16:20:58 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Paolo Abeni <pabeni@redhat.com>
Date: Mon,  2 May 2022 17:17:35 +0200
Message-Id: <20220502151735.4051393-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <a683810b6ef8135486fde3b4d3286332d70100f7.camel@redhat.com>
References: <a683810b6ef8135486fde3b4d3286332d70100f7.camel@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] question about intel wired patchwork
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paolo Abeni <pabeni@redhat.com>
Date: Mon, 02 May 2022 17:14:16 +0200

> Hello,

Hey,

> 
> This patch:
> 
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/e36724d3cdfbedf9af1a2a7f47ebd60aa7932f83.1650978540.git.lorenzo@kernel.org/
> 
> is stuck in the 'Awaiting Upstream' status since a while. What does
> that mean? In the netdev patchwork the same status for such patch would
> mean that we expect it to go trough the intel wired driver tree, so
> it's a little confusing to me.

Yes, it will go through the IWL list, XDP + ixgbe teams are
currently reviewing and testing it since we have some changes on our
side on the same topic.

> 
> What are the better options to move it forward?
> 
> Thanks!
> 
> Paolo

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
