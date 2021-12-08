Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD7A46D0E7
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 11:22:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A81C40A3F;
	Wed,  8 Dec 2021 10:22:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uthNSGyRiiFR; Wed,  8 Dec 2021 10:22:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71DC440A13;
	Wed,  8 Dec 2021 10:22:04 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 361841BF362
 for <intel-wired-lan@osuosl.org>; Wed,  8 Dec 2021 10:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22D2440A0E
 for <intel-wired-lan@osuosl.org>; Wed,  8 Dec 2021 10:22:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TOmcL_h0wyff for <intel-wired-lan@osuosl.org>;
 Wed,  8 Dec 2021 10:21:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2AE5640207
 for <intel-wired-lan@osuosl.org>; Wed,  8 Dec 2021 10:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638958918;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=MJ5bMGl4yDEZNt7ZdrvkIcnm7pHT7ePtKwzJHkC0yww=;
 b=ZF9NO/nW1WWHfKJ45H1PHX4V70WyIxMiVtK24NXIBYvMouWzHcChemVeDUTcMx41YMnYgQ
 kWLGz774XYIROZuttKG6Ucad9hRyxDDUxl+3Kxcdc1uPQVgv/7yy6MgQeBgmMblX+b6t29
 ugZDLNiN2bT0KWOMCxQBpeuE1bZi/nY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-341-M40W4qVjN6KI8pCwN4a9ZQ-1; Wed, 08 Dec 2021 05:21:56 -0500
X-MC-Unique: M40W4qVjN6KI8pCwN4a9ZQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4FB6A1017965
 for <intel-wired-lan@osuosl.org>; Wed,  8 Dec 2021 10:21:55 +0000 (UTC)
Received: from wideload.redhat.com (unknown [10.22.8.29])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 73E0050E11;
 Wed,  8 Dec 2021 10:21:54 +0000 (UTC)
From: Ken Cox <jkc@redhat.com>
To: intel-wired-lan@osuosl.org
Date: Wed,  8 Dec 2021 04:21:51 -0600
Message-Id: <20211208102153.669338-1-jkc@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jkc@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [Patch 0/2] iavf: Fix panics due to active work
 queues being freed in iavf_remove()
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
Cc: Ken Cox <jkc@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series fixes panics that occur after iavf_remove() is called.

The panics occur because the iavf_adapter structure is freed at the end
of iavf_remove(), but it is possible that new work has been scheduled using
the work_struct's contained within the iavf_adapter structure.  If this occurs, the system will panic when it later tries to process the work queue.

Ken Cox (2):
  iavf: Fix panic in iavf_remove
  iavf: Prevent reset from being scheduled while adapter is being
    removed

 drivers/net/ethernet/intel/iavf/iavf_ethtool.c  |  7 +++++--
 drivers/net/ethernet/intel/iavf/iavf_main.c     | 17 +++++++++++------
 drivers/net/ethernet/intel/iavf/iavf_virtchnl.c |  4 +++-
 3 files changed, 19 insertions(+), 9 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
