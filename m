Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tuoKDUJXVmqy3gAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2026 17:35:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A708D7567C2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jul 2026 17:35:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=6HOrBKYD;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F5EC4070B;
	Tue, 14 Jul 2026 15:35:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F1uEIoeNSDe7; Tue, 14 Jul 2026 15:35:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C05140842
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784043326;
	bh=s8Ipgx3lctn3cg5R9rlDTJWZ0blL0+fnY2U9hYcXA5k=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6HOrBKYDhp18CyaFzYuuNZ2EpErWhej6f4RCUyvJ19pIz3qitZw3eSETH3rjZEG1B
	 vBSvgGBuzKOHZst3wsB8krwNKT3WXeiDXWXCeLnZOgOK+k5QFF1JlMlhG4yLNkEB7I
	 evHQRJ+uMkWzfEwaKmtcj1vJSiWxXHKrvvaMzOmwWfyIiroZ+O1DSezo99nlb9v0Yh
	 eB4agVxuj15TioRD95r4d7XUysLObyt/dWI+zbt7S5su4Pav5Pvn708d96/81b6dc6
	 bHOxN7DAfwGI98LoreaY4G2bje3YhT11s7cWlPlm8vWB/miPWhmh+KlZ11TYEuQoYr
	 zjMC0YnosY7ag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C05140842;
	Tue, 14 Jul 2026 15:35:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3751D96C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 08:11:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C36180854
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 08:11:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8CotW_R1gMgc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jul 2026 08:11:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::102d; helo=mail-pj1-x102d.google.com;
 envelope-from=mhun512@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 700C880821
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 700C880821
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 700C880821
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 08:11:33 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 98e67ed59e1d1-381891a9525so4389459a91.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jul 2026 01:11:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1784016692; x=1784621492;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to:content-type;
 bh=s8Ipgx3lctn3cg5R9rlDTJWZ0blL0+fnY2U9hYcXA5k=;
 b=VA4ieuNYepmLJsTQ3BNCoRxezgyqkJtfuXGxK7apvYxyNMPzVEdPHgXZmNVH02TQuf
 llForoMVfRoIm+jOnYIZWfo0CVMzdNlSIXlXitzX7VmvKFMXDUBLFGDkXANhHJVLnB+L
 EIFCasY2Y9LsC4O+Oei+5STVIO06R2YIg4daTgVJaB9W48EvxHtFLTMEowsboW39MFu/
 h5XHJrc7nkBJFCXkGcrgwCXOV4uLM5zfyahnd2l0EgILSLuJWqEaTL1YRkwuzIyHnMiC
 DXQrleJ3zGqJrnF/G9V3lgWizWQhV2jWSCH1oTNaz6Tq0aEbTo7Q5cK7qA9/RryVSypf
 yVyg==
X-Forwarded-Encrypted: i=1;
 AHgh+Rp22zY7mrRQ6jLN/35RL9uMQLTb+ms9Sxo10fK1YxskpTxlKhgLsZXrDeiF3/eFxaf4q2Or7/mSoCCL9fWWyo8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyvKY7AESkDYulnsju7kWytqVRxFRdSZth376nVuytvqgwruRwo
 uv9x01TXVLvL7ZuAJB8+vRd7x3OOO6N5X1JqpnLb2JiALLYB5EJ9yVk=
X-Gm-Gg: AfdE7clJvd3UbTKeJK4J0anda8eP1bJI+i1ywux2yDVmLHycKc3D2NakVTt6ZTBioxI
 TsnXITdteynofEZXUaT8FsOazELlYUKkYwjBF2NiUzLwVXpgf+Y3e/snlenHDEAJ2G46fmjxbtq
 YvmZQ4nrob1hXvnaoRmTiQfJaFiI+9yfw1p32jycV1onZg4q34tj1s28S8L4+ww+o6J9eB1dZiZ
 PQf+d4cX4x+vKSkY86WtrUUCduwVJVT0Ex7V4s10+INMIux+MpJj04lv6Mo2UUd+XGf5y6vSfR6
 vHbxZu8nFo6n/lSCP74MSRf5XS+AT2Bw5FAELLQtMsrcFkGZSCiW+AZ053Tpvi5/HG774rwdMz2
 OdiCrXLdk7PRVOCWgZTtXoCGF7mqutp+P/PHkkj+T2y1HqBukxQTDEPqdh3T1OEkzFqUrNRMVvd
 2qoMKldmIC3mRqSAAEw5oAlts8TxcFVtuXeMmWdx0wpP73tfSgZcJZ9WzmSYna1ay2P2KhCtQA/
 WfAjJlLrPOmGnmdbaGKzFdW4dRxsEi6iy6KvV4LNIf8rCTFcA==
X-Received: by 2002:a17:90b:1a89:b0:36d:9e0b:3801 with SMTP id
 98e67ed59e1d1-38e1add8ec6mr1362188a91.8.1784016692263; 
 Tue, 14 Jul 2026 01:11:32 -0700 (PDT)
Received: from localhost.localdomain ([14.5.152.27])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-38deea72fc3sm1427267a91.2.2026.07.14.01.11.28
 (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
 Tue, 14 Jul 2026 01:11:31 -0700 (PDT)
From: Myeonghun Pak <mhun512@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: Milena Olech <milena.olech@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Myeonghun Pak <mhun512@gmail.com>,
 Ijae Kim <ae878000@gmail.com>
Date: Tue, 14 Jul 2026 17:11:24 +0900
Message-Id: <20260714081124.90962-1-mhun512@gmail.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 14 Jul 2026 15:35:23 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1784016692; x=1784621492; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
 bh=s8Ipgx3lctn3cg5R9rlDTJWZ0blL0+fnY2U9hYcXA5k=;
 b=kL999um9TozokTqS4AisoVc8KHvNsjx5IrkHdBXL9++gs/MJetLBhRw99L2pRNIkQQ
 nWqcVJBUfluO3R7IDtlRg5dc5pw3NusS5GkFGyUz8CArsp8S2b8chJmQ9IHEdk91qfzW
 wO56BaLcQ8qOIibZVW5KWxZN9DiuB935Znn56HI6K8iTMVrAjRJ9cdDwcx1uRgK8Dhyd
 c11DuCsOJjwgTEPnocpEyNh2Now5swGkR6tKRbbQL//JLcY8plGXau+83wsbPNQNDN+W
 E99+z0QogQPvcGCA89y959ndtUeJUacGEZ1RVssNqvcFVlak32uxh6wfJmHSmijRgioC
 te3g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=kL999um9
Subject: [Intel-wired-lan] [PATCH] idpf: disable PCIe PTM on device removal
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[mhun512@gmail.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:milena.olech@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:mhun512@gmail.com,m:ae878000@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mhun512@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A708D7567C2

idpf_probe() enables PCIe Precision Time Measurement with
pci_enable_ptm(pdev, NULL), which programs the PTM control bits and sets
pdev->ptm_enabled when the bus/controller supports it.  The teardown path
in idpf_remove() releases the workqueues, vports, mutexes and the adapter
memory but never calls pci_disable_ptm(), so PTM is left enabled on the
device after the driver detaches.

This leaves the PCI core's software PTM state and the device's PTM control
bits set with no bound driver.  pcim_enable_device() only arranges for
pci_disable_device() on teardown and does not undo the PTM enable, so it
is not a substitute here.

Pair the enable with pci_disable_ptm(pdev) in idpf_remove(), matching the
igc and mlx5 drivers which already disable PTM on their remove paths.

Fixes: 8d5e12c5921c ("idpf: add initial PTP support")
Co-developed-by: Ijae Kim <ae878000@gmail.com>
Signed-off-by: Ijae Kim <ae878000@gmail.com>
Signed-off-by: Myeonghun Pak <mhun512@gmail.com>
---
 drivers/net/ethernet/intel/idpf/idpf_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
index 0dd741dcfc..3d3471d3f7 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_main.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
@@ -159,6 +159,7 @@ static void idpf_remove(struct pci_dev *pdev)
 	mutex_destroy(&adapter->queue_lock);
 	mutex_destroy(&adapter->vc_buf_lock);
 
+	pci_disable_ptm(pdev);
 	pci_set_drvdata(pdev, NULL);
 	kfree(adapter);
 }
-- 
2.47.1

