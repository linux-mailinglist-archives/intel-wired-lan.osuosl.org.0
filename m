Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AE42E210F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Dec 2020 20:57:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2893E2E0FA;
	Wed, 23 Dec 2020 19:57:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id koFJ2LcA46Uc; Wed, 23 Dec 2020 19:57:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B9EF52E0F6;
	Wed, 23 Dec 2020 19:57:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C5F21BF405
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 19:44:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 87C5A85AF1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 19:44:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T2HxOdZV1iKF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Dec 2020 19:44:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3756B852FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 19:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1608752674;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=EuGy6qIW0/paAvyDjWz+UUhD6lrJF9atn4prE3pJJ6w=;
 b=Mt0T2WZ5Yb7Mez5OL3fuUJPMrBfqNM1tIYItdMWopEAEnshyEXWrLoSaOYhhpa15Gu8boJ
 3QQTw+CWfIugcOxVuxIoPCBs8C0tcVsWRCk/hxJoqKi7TR+OvsFN0yqEIrQou5vj2i8gn8
 BLPfo9IUAwDgP6Cfzf0qcXvpRRLU6Bk=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-267-irSzyYooOc-ET9sAFipcyg-1; Wed, 23 Dec 2020 14:44:32 -0500
X-MC-Unique: irSzyYooOc-ET9sAFipcyg-1
Received: by mail-qv1-f72.google.com with SMTP id i13so195137qvx.11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 11:44:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EuGy6qIW0/paAvyDjWz+UUhD6lrJF9atn4prE3pJJ6w=;
 b=JHMGm2UG9V18qooDSjZLZOf0+/MC7x/y/Tn8A29hK5YmzTTMD/sSHpkhqVuR9NbxzR
 rUsxa7POWZ+MJgFNQdvWyNV2Mu+I2GkT9v41h79iiQTLHZ+XL1aJWTOSX+pN6i/aDg8G
 3+J6wgbxHSTjXS8GQp+67evEqfnczZU0wenxubtUpFs7C+Nhi89K5b+wXNh02hFqnYOo
 cijzMTAn2TNJB12cyepS45JvTp0RZYCqWv1gX/3DPjOEvpSPUbsoT2BK+q0yU4twucll
 Kq9boyItjY1O9B34/YA8/jo0dEJ+J8a6+6SOoVQTbqrH7ILBpu/F861e9ry1Gvn0FhI9
 mwRw==
X-Gm-Message-State: AOAM5328J5woK1E9HRLsSZ7g2MHUSiRuf710D0xj5afAoVPPEpVEWrcr
 xeoG3focepoOS3K8p9zyoUBcK/0u17KWliBVPj9QX+eE1q5imoENvsln0Zod8UcXsSdcZVqOs/3
 KAt5g0C3Uo2+TzpTC62AUYrpjjCeNKw==
X-Received: by 2002:a37:5b46:: with SMTP id p67mr28428061qkb.124.1608752672501; 
 Wed, 23 Dec 2020 11:44:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwnc84b1xei0cRwwa2LGRxGKjZwkeTxy1ErJZY1x5QNthF2Qqq8Btc61gyWkWl6PYehaSPqyw==
X-Received: by 2002:a37:5b46:: with SMTP id p67mr28428041qkb.124.1608752672297; 
 Wed, 23 Dec 2020 11:44:32 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com.
 [75.142.250.213])
 by smtp.gmail.com with ESMTPSA id p75sm16054644qka.72.2020.12.23.11.44.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Dec 2020 11:44:31 -0800 (PST)
From: trix@redhat.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org
Date: Wed, 23 Dec 2020 11:44:25 -0800
Message-Id: <20201223194425.125605-1-trix@redhat.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Wed, 23 Dec 2020 19:57:02 +0000
Subject: [Intel-wired-lan] [PATCH] igb: remove h from printk format specifier
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Tom Rix <trix@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tom Rix <trix@redhat.com>

This change fixes the checkpatch warning described in this commit
commit cbacb5ab0aa0 ("docs: printk-formats: Stop encouraging use of unnecessary %h[xudi] and %hh[xudi]")

Standard integer promotion is already done and %hx and %hhx is useless
so do not encourage the use of %hh[xudi] or %h[xudi].

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 03f78fdb0dcd..cb682232df16 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3156,7 +3156,7 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	 * the PCIe SR-IOV capability.
 	 */
 	if (pdev->is_virtfn) {
-		WARN(1, KERN_ERR "%s (%hx:%hx) should not be a VF!\n",
+		WARN(1, KERN_ERR "%s (%x:%x) should not be a VF!\n",
 			pci_name(pdev), pdev->vendor, pdev->device);
 		return -EINVAL;
 	}
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
