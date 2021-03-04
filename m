Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA20732CA97
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Mar 2021 03:56:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 203DB6F4EE;
	Thu,  4 Mar 2021 02:56:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gxCFcbr971br; Thu,  4 Mar 2021 02:56:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A2B76F4EA;
	Thu,  4 Mar 2021 02:56:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F1121BF36E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 02:56:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E57947995
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 02:56:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8N20Y5FbrIma for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Mar 2021 02:56:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AACD0470A7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 02:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614826588;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=27t46XHebLzRKwK6kiEaa5rYWovZp6L1OdarLDSHed8=;
 b=ZdextwYGDmN+A6Z+VbFq5ZYebYVTlxGTzJZTeb/P/tPaUqqjEs6sATLv4BnZPZdm9srToc
 /eJAY37wvJVCsDcyy6ITG0F6qgCfBJ7mxuItZwOZD+myCyoPeFmyxrS0yY+hxBq/4s0yYw
 i8aXAN9tyxhbHBx4yjFcueOVuGlxBP0=
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com
 [209.85.210.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-88-qL4VxBN3NT-FI6QPP-PG5g-1; Wed, 03 Mar 2021 21:56:27 -0500
X-MC-Unique: qL4VxBN3NT-FI6QPP-PG5g-1
Received: by mail-pf1-f197.google.com with SMTP id t69so17119608pfc.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Mar 2021 18:56:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=27t46XHebLzRKwK6kiEaa5rYWovZp6L1OdarLDSHed8=;
 b=r29cxwAzwwdSJOZdi96siRanEAmT5z+laUhzmvXGKco4xheZu0N5Z9fVZ7IQ6todc/
 IdAFz4NIVK506ikn9HhUlcZzwt9z+rzjZDzvNdI8qp8BuKJG2mjbRJ2Kulf9J7QIugZ1
 Yh43OTjupno2EkQ1YxBFHMahS2Ndt8srI/7eKC+YE92n42/Cm9KMG6QVpVQwV/QwukWC
 TJjLbyjKVeGkGWMU+qsq+AglcDKNyvFR3Hj91ZSZQ5MRxM+ch6akZsliRmD+Ejb+j3md
 Z1pt5aLhKRVQBcUQ7OfNi9rkt4CsEpjpNlIk0rwXvYdOX3sEUT8P9t0m1n1FMh/PZgQb
 gwog==
X-Gm-Message-State: AOAM531IdVcPOgOW2SlpnhzAzdNhDURKTTsqlwzy3NBZWQ8FRHRBXHq9
 PrwyF5RBHm+gVnLkt/L4HBiNlMyviA4MrkW3GHGTW6Y7pYgUrnWn6Go+UG0CqmYXBMVoo+BfUkC
 nJqd0nCbpjBo/eEa03pYQMGHbLU/zPg==
X-Received: by 2002:a63:511:: with SMTP id 17mr1722709pgf.173.1614826586229;
 Wed, 03 Mar 2021 18:56:26 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy5O+3/Y8estRnruVL7Uuv/wewORRlTvTGikebpvnF1FMcUf9zFn3m1kmHhqr7CddFgmmra6A==
X-Received: by 2002:a63:511:: with SMTP id 17mr1722704pgf.173.1614826586086;
 Wed, 03 Mar 2021 18:56:26 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id w188sm25973503pfw.177.2021.03.03.18.56.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 18:56:25 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: netdev@vger.kernel.org
Date: Thu,  4 Mar 2021 10:55:42 +0800
Message-Id: <20210304025543.334912-3-coxu@redhat.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210304025543.334912-1-coxu@redhat.com>
References: <20210304025543.334912-1-coxu@redhat.com>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=coxu@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [PATCH v1 2/3] i40e: use minimal rx and tx ring
 buffers for kdump
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
Cc: kexec@lists.infradead.org, open list <linux-kernel@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use the minimum of the number of descriptors thus we will allocate the
minimal ring buffers for kdump.

Signed-off-by: Coiby Xu <coxu@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 77bf8c392750..d6868c7aee05 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -11029,6 +11029,11 @@ static int i40e_set_num_rings_in_vsi(struct i40e_vsi *vsi)
 		return -ENODATA;
 	}
 
+	if (is_kdump_kernel()) {
+		vsi->num_tx_desc = I40E_MIN_NUM_DESCRIPTORS;
+		vsi->num_rx_desc = I40E_MIN_NUM_DESCRIPTORS;
+	}
+
 	return 0;
 }
 
-- 
2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
