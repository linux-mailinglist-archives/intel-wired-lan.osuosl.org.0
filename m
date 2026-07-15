Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VxbLFDw6V2rgHgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 09:43:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 956F975B8C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 09:43:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=0O0Ub0AI;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A0FD80BBC;
	Wed, 15 Jul 2026 07:43:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZYhfVdT-ca-6; Wed, 15 Jul 2026 07:43:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B645A80BD7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784101433;
	bh=AYAlIbLB6X0GecHObbyrvXXBG7k1g/UCDRjvsUf6hcY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=0O0Ub0AIU1FsAa836GB3mh4qFl2Y7u4bimyDMVYCvoEVrYBX9wehZ26uR191D7nvZ
	 +yV8DxyLjGOvw6fT1Eo4XXIa0oyhKOsTJuuKhEhMiIaFjSgpi3JFERjFU8/QMvmfsL
	 LepvhOYjr6GVVRoQLcRusKVnnd18xVpOxGQkFWoqZF6O5Ql8cYrZ/oRovSfdIoEygn
	 EfE4UBfRAuOYlJrG6M/1oCdnLOjPozps2IGqv0zZiCjiczWUc+6bLPQmriLSDe0vHW
	 C5co3YaWm2YTWjRYEbKDS7wSFGSUtuP2SyFH4p6YLJiM5ofLkSoyMKou8lU9HjfukP
	 pmGbKo0wkGS6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B645A80BD7;
	Wed, 15 Jul 2026 07:43:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D089849D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 07:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B0EB440055
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 07:43:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fte6M18xrBvX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 07:43:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102b; helo=mail-pj1-x102b.google.com;
 envelope-from=mhun512@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EB3104004C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB3104004C
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com
 [IPv6:2607:f8b0:4864:20::102b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EB3104004C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 07:43:50 +0000 (UTC)
Received: by mail-pj1-x102b.google.com with SMTP id
 98e67ed59e1d1-38511175ad3so4233455a91.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 00:43:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1784101430; x=1784706230;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to:content-type;
 bh=AYAlIbLB6X0GecHObbyrvXXBG7k1g/UCDRjvsUf6hcY=;
 b=WhapspRI5JZ+vArtPntF7B7jNE3tSqKZcDXjj0FR2ckqH6Qb8OeQGf4CKxRX9Jkq8+
 phFujfMBrJGeyUU6jAe5I9xlbVFZBU2Rf67q8dZ2JavASWNBiNb/6wyv82tSUlpcZ9qS
 moutgeBZ2eAUxxUg8VOz90lZD+TigfU0E3DXBheGY58dtnI6HFt2q9pa9FDyqcfZ+fP2
 3reI4nhxPvyhkAMmQoneYb/loCFHkR4ymrzFJfLcW3dWl1Ra1k/kbR6kG6WvaVPHDTTh
 wT7aQf4b4ip0jviRYKhx/sH61t+2/unSmi4c03XSErIsKLHESNWwaB854jOciCam5TLf
 2/UQ==
X-Forwarded-Encrypted: i=1;
 AHgh+Rr6yfOSi3Fs42Ahvgih36UHxYWHC1LLL3FFEiJTFN1+JolWl1uygKgnuu0H2eRihI3el88nO526sq9sHupbiMs=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxdKEbvHGUS5kpQppLZWUOGfovFBgRw8j5Zu+dZXiqnEpKo0wpI
 z23gIgdupb3QcGZWNjnHiFNXlgS3J8TFi9BFkhw699C2nrKtmq7s6BQ=
X-Gm-Gg: AfdE7cmdZUCbTb3ID/pyybg+TH7YZSksRzDrzd/O199ZBNYnUITOZ9s5Z3Nz9UNL4FX
 seIrMQrWjAmRIo6/bLAw5m8AG7iIK1NkDJgPkINBo9ea9EBOh8ZXQDFQwioojbf0tbFeWoUdbmB
 2fzF0mna7+w6hZoVj6uBcUN/ISrUhmzt5rSUbjG8NLfwx9hlOhHTHpzKhHpZmpTE2p8lyQ3jspH
 edywGrIqz8cp0ExZSc+0/1fiK92bboBEEkIiiEH6Yyl4QG2ZjK2TH8dRGkrGznSRjGDU6Ig0WwZ
 3Zn0/UvGRGgROFqaCHJCjq0kpxR5OVy9/U8uuxZCw6fdn1JXgc0C3pGu6UfZQ1eBmH6OHSDD1bs
 Z1lUFmUqoh1mZ1i/2app8OKuWCEQx9m0rp7EGpK6A/hfpM+feixj2WvDeoa0j3xDS3T6PBjs23d
 OzHshfsWiIxskpLywqKaHStk+KrZayu+R0J/EH8BIWWDp8N+sN8uNLJOnbf/3PeRchq8VrZ2hJm
 SdBesL1fJwOoOxvDN+XoNbiVinnea7NB4paxhUyqnVaAAu7jw8L6drO5Pzr
X-Received: by 2002:a17:90b:1d52:b0:381:a766:efcb with SMTP id
 98e67ed59e1d1-38e1ae5f663mr5684089a91.4.1784101430164; 
 Wed, 15 Jul 2026 00:43:50 -0700 (PDT)
Received: from localhost.localdomain ([14.5.152.27])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-38e172fd17asm2707964a91.12.2026.07.15.00.43.45
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Wed, 15 Jul 2026 00:43:49 -0700 (PDT)
From: Myeonghun Pak <mhun512@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: Milena Olech <milena.olech@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Myeonghun Pak <mhun512@gmail.com>,
 Ijae Kim <ae878000@gmail.com>
Date: Wed, 15 Jul 2026 16:43:42 +0900
Message-Id: <20260715074342.49281-1-mhun512@gmail.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1784101430; x=1784706230; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
 bh=AYAlIbLB6X0GecHObbyrvXXBG7k1g/UCDRjvsUf6hcY=;
 b=h5lJp6OsdeNuZG8DGzwqEuAOyPcci6TreCErAmNZIxN8DoB1xKtkf2jB2ulf3tyTeH
 2cCl972yZOZVpkrXtM3wtUVy0i03kRC3GPdzk8eTh8HrSAkkgCoI8gpf/kUlPgFv+0t6
 vB23Iu+Klu4xhi2A75nYtmPYAu6yYdhscYtjJGpvb1cWaJXZmXzplK8kGEAKScmoGAis
 W64HmoieH9e2OHbaYFikD0y8UtVVbeZRjtAqQdzPoULN+C7z4XLOPkeiV8XtqWiRbxJ6
 h1Lwpadq5mvzCU4uNVd10bTeaYmOeZWEbVbxuu3rGvg3EfHWnBIvu8eMdJBVQWHcwl3x
 AezA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=h5lJp6Os
Subject: [Intel-wired-lan] [PATCH v2] idpf: disable PCIe PTM on probe
 failure and removal
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:milena.olech@intel.com,m:emil.s.tantilov@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mhun512@gmail.com,m:ae878000@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mhun512@gmail.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mhun512@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,vger.kernel.org,gmail.com];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 956F975B8C2

idpf_probe() enables PCIe Precision Time Measurement with
pci_enable_ptm(pdev, NULL), which programs the PTM control bits and sets
pdev->ptm_enabled when the bus/controller supports it.

If a later probe step fails, the error path releases the allocated
workqueues and adapter memory without disabling PTM.  The remove path has
the same imbalance when a successfully probed device is detached.  In
both cases, the PCI core's software PTM state and the device's PTM control
bits remain set with no bound driver.

Add pci_disable_ptm() to the common probe unwind after the PTM enable and
to idpf_remove().  pci_disable_ptm() is a no-op when PTM was not enabled,
so the non-fatal pci_enable_ptm() failure remains safe.
pcim_enable_device() only arranges for pci_disable_device() and does not
undo the PTM enable.

Fixes: 8d5e12c5921c ("idpf: add initial PTP support")
Co-developed-by: Ijae Kim <ae878000@gmail.com>
Signed-off-by: Ijae Kim <ae878000@gmail.com>
Signed-off-by: Myeonghun Pak <mhun512@gmail.com>
---
Changes in v2:
- Disable PTM in the probe error path, as requested by Emil Tantilov.

 drivers/net/ethernet/intel/idpf/idpf_main.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 0dd741dcfc..f08ce13c20 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -159,6 +159,7 @@ static void idpf_remove(struct pci_dev *pdev)
 	mutex_destroy(&adapter->queue_lock);
 	mutex_destroy(&adapter->vc_buf_lock);
 
+	pci_disable_ptm(pdev);
 	pci_set_drvdata(pdev, NULL);
 	kfree(adapter);
 }
@@ -266,7 +267,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err) {
 		pci_err(pdev, "DMA configuration failed: %pe\n", ERR_PTR(err));
 
-		goto err_free;
+		goto err_disable_ptm;
 	}
 
 	pci_set_master(pdev);
@@ -279,7 +280,7 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (!adapter->init_wq) {
 		dev_err(dev, "Failed to allocate init workqueue\n");
 		err = -ENOMEM;
-		goto err_free;
+		goto err_disable_ptm;
 	}
 
 	adapter->serv_wq = alloc_workqueue("%s-%s-service",
@@ -366,6 +367,8 @@ err_mbx_wq_alloc:
 	destroy_workqueue(adapter->serv_wq);
 err_serv_wq_alloc:
 	destroy_workqueue(adapter->init_wq);
+err_disable_ptm:
+	pci_disable_ptm(pdev);
 err_free:
 	kfree(adapter);
 	return err;
-- 
2.47.1
