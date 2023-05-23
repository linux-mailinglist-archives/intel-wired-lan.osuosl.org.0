Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B516770D36D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 May 2023 07:55:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C458D40949;
	Tue, 23 May 2023 05:55:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C458D40949
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684821332;
	bh=CphLx4cbEB8efk/cJ05un5zX0jvzqMi9OREB3T46TI8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=v+mec3yvv+wGzE86wntb65gNs7FMcbHbh9ikukxvKeSTnSGqqt5PifUzg8G81Ojh+
	 jap90zs5O6ll2Pc0Lbfg6bdAHiZEoa7ijp07ltNf6Il5rDqJc6VBryieIe4tEHiGQK
	 UoousVWppiNZpm768mZOKrvEG9HAKRDq3Awvz2IMNVPC0x6J6QEFoZTSVNqqyguBdj
	 BHaxnAsoCtlKTqafWV8bXVEW4o+hPg5lqLRINz4dnmWYaoHTOw+sCul7Cra9RjVWbq
	 WD83a7X2yrfwbcK5YB/mZvPSFCeWOFF/9Ghab59UhINFM0DW75MDYoVW7TITtkMthU
	 V2fO/pmvm1HwQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qzb0xGcJ8ZJ7; Tue, 23 May 2023 05:55:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B680B403C4;
	Tue, 23 May 2023 05:55:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B680B403C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C46671BF37F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 05:55:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A0EB260AE3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 05:55:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A0EB260AE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fbWYaO6bZc4t for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 May 2023 05:55:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B133607A4
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5B133607A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 May 2023 05:55:23 +0000 (UTC)
Received: from hch by bombadil.infradead.org with local (Exim 4.96 #2 (Red Hat
 Linux)) id 1q1Kz2-0091FK-2G; Tue, 23 May 2023 05:54:56 +0000
Date: Mon, 22 May 2023 22:54:56 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <ZGxVMAa/3QOd3cRf@infradead.org>
References: <20230522211810.never.421-kees@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230522211810.never.421-kees@kernel.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=M7NmYC/Iylm9myghHwqILim55SAUt9QrM+UZYk0eJlw=; b=f9sp9X29rgCQutb1zyE01/AbOq
 vvWhdCJdNJmWOTdpGbrPMqnfPwdWtXyJItgUJklC82G5xiqj0mrMp5gXWlrUyIeXR+Mo++eDaMld4
 tWsVWKUUVdFiL9GEbmNRBORxElvBLme8vx5TTV6tYdjJ1e5eSV/VbS43P+Khj8kMOh1O1PmULkLJL
 0OOzVdMaikHhPYDVaCp6lILsdt3BDSSS47fwmWLB1b9IJk0UQN9gdlYyugYZbkMVru3EO8fQg0G+G
 R7W4esEGccYKZIxg5UNd3i+kRa2lJcm+3kpcPRdptBLx2RRxWT1S+kucCJVOfA0C6e6Y7HByMAMiS
 62Q8eALw==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=infradead.org header.i=@infradead.org
 header.a=rsa-sha256 header.s=bombadil.20210309 header.b=f9sp9X29
Subject: Re: [Intel-wired-lan] [PATCH] overflow: Add struct_size_t() helper
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
Cc: "Darrick J. Wong" <djwong@kernel.org>, Daniel Latypov <dlatypov@google.com>,
 storagedev@microchip.com, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>, Guo Xuenan <guoxuenan@huawei.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 linux-scsi@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Dave Chinner <dchinner@redhat.com>, Keith Busch <kbusch@kernel.org>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 megaraidlinux.pdl@broadcom.com, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 netdev@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Tales Aparecida <tales.aparecida@gmail.com>,
 Don Brace <don.brace@microchip.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
