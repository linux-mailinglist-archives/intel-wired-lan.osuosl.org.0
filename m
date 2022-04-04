Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF0C4F1394
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Apr 2022 13:06:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8F4460B59;
	Mon,  4 Apr 2022 11:06:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DKmTgec_hxiW; Mon,  4 Apr 2022 11:06:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FA4460EDC;
	Mon,  4 Apr 2022 11:06:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 389C41BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 11:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3267C402F4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 11:06:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lo7Ocd-U2pjj for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Apr 2022 11:06:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 063A640489
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Apr 2022 11:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649070370; x=1680606370;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OfZd8m/j4x2eSf+mhhw4j+5Z5vtb4dvGYE8LqR6i3e0=;
 b=WjrPiRhqJGa1r1Fc2HkzHSrSMJp9jn9pOPrdDSxY98NbZxCwQqONDMff
 Cbm/5O5BM8dj7HKrK7bsWo7Exjsjj8/Z47k7ezYYuX7j68bBhB65RGADS
 7l/oXfUoRngT17Ke0Yms69Yp82MguWBPgbmWfqWFpFwYWL+P6GNR14kND
 RVKFmct24Efs0aWP8hWk4Vh+96iP4s+TNQKNI4knHxXnoryMDvdNpVbIP
 A/9TIcJ7NFG3+W4gzpmiJnxwJrxSLidqDogQzHXmPFPdiyNBvurJRSqPH
 PzbH6qZkW1Ic+frC9DxdYdv/PJjD9WoD78eL+6dwWuAPA75DqmDzaDctq A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10306"; a="259320409"
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="259320409"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 04:06:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="651456697"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 04 Apr 2022 04:06:06 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 234B64TR032733; Mon, 4 Apr 2022 12:06:04 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Ivan Vecera <ivecera@redhat.com>
Date: Mon,  4 Apr 2022 13:04:07 +0200
Message-Id: <20220404110407.1106047-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220404100615.23525-1-ivecera@redhat.com>
References: <20220404100615.23525-1-ivecera@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix use-after-free
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
Cc: netdev@vger.kernel.org, mschmidt@redhat.com,
 Brett Creeley <brett.creeley@intel.com>,
 open list <linux-kernel@vger.kernel.org>, poros@redhat.com,
 Madhu Chittim <madhu.chittim@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ivan Vecera <ivecera@redhat.com>
Date: Mon,  4 Apr 2022 12:06:14 +0200

> When CONFIG_RFS_ACCEL is enabled the driver uses CPU affinity
> reverse-maps that set CPU affinity notifier in the background.
> 
> If the interface is put down then ice_vsi_free_irq() is called
> via ice_vsi_close() and this clears affinity notifiers of IRQs
> associated with the VSI and old notifier's release callback
> is called - for this case this is cpu_rmap_release() that
> frees allocated cpu_rmap.
> 
> During device removal (ice_remove()) free_irq_cpu_rmap() is called
> and it tries to free already de-allocated cpu_rmap.
> 
> Do not clear IRQ affinity notifier in ice_vsi_free_irq() when
> CONFIG_RFS_ACCEL is enabled. This is a code-path that
> commit 28bf26724fdb ("ice: Implement aRFS") forgot to handle.

Hey, thanks for the fix!
I posted a patch which supercedes these changes to the internal
review on Friday. I would proceed with applying mine (which I'll
submit in 2 hours, it should've waited for the internal acks first),
but for sure I can add you as 'Co-Developed-by:' if you want (or
vice versa, me as co-dev-by?).

> 
> Reproducer:
> [root@host ~]# ip link set ens7f0 up
> [root@host ~]# ip link set ens7f0 down

--- 8< ---

>  		/* clear the affinity_mask in the IRQ descriptor */
>  		irq_set_affinity_hint(irq_num, NULL);
> -- 
> 2.35.1

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
