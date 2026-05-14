Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOvFHMgUBmp3egIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 20:30:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4A0545E19
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 20:30:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6391A4109F;
	Thu, 14 May 2026 18:30:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j_VJOrIDnzAO; Thu, 14 May 2026 18:30:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7886E410A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778783427;
	bh=QDvdudeeJAHgJGuZXL6tml+bzI7syuTzDcLB+eMLOx0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=S6xPvvnBvYh62gkLg/SVr2yQDlF9guE1SlL+gMQpT1Df5sbwxc9iPXmDXQMp4p5GF
	 oIqbhvJ5FHr5WWKyxT6mbrJFziZKWEGbxfox3ugDVhPGcMPGZvUeiHp978tnU8jKcd
	 uxqFYYuTAUa8veRt3UREz1/lIoiPKQnXjd5RSiOBy2Sp7vqenhbPEgw2BfTuVGgYfC
	 PZ/2ErW9RYBcTwDTT5snYHbNaZtmw7arZvgT/egL8s2zAB264J6F5De0t/cD3ldumu
	 0d1Lk25UszQzD4JxVs4aecHsznNF4b8xX2NMBttm7kbMjmqOxorqa++jgl6ytiqIHb
	 Ad5zO617rXSnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7886E410A4;
	Thu, 14 May 2026 18:30:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A71AF37F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 18:30:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8CA73407C2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 18:30:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id izZMnBEC2oUD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 18:30:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32f; helo=mail-wm1-x32f.google.com;
 envelope-from=devnexen@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A67D9407BE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A67D9407BE
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A67D9407BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 18:30:25 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-488a14c31eeso56451675e9.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 11:30:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778783423; x=1779388223;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QDvdudeeJAHgJGuZXL6tml+bzI7syuTzDcLB+eMLOx0=;
 b=Kelz0xWTLcHVFU5dq2f5ruJhuC1mVKzECVmF0tmKRthPuqArShNa91TCI0BLtEWgeZ
 ece0hUfF5H3H08tRl7NYcRoUkQBPZFjamQ0AyRSsfh1LFD+Rpuofsqm3kqxnWhevXY1A
 GasQHUS1wosu/LKMCXxFyA5OlJQnMkcWiRi+vYxCOIKiAfqPmk2slbRI+1Lb17cif2RW
 /A/l605ZKJTmoITDXAgDdAbw7e5/UXsrJZ9zQRvz4BsAdvpiOq8ZD9JkMb6lBjNwjUhm
 bYwbY5dI5OjHIAW1PUiNrO3p49kkHF3jO19YCLzBwMWEssD3sHmxBIEt6Je90kdYy/Mv
 0lCQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ97Zj1Eds0vkYUwUT85CVrX/OfsXtTtq5SSy0IMgFioCLFFva3hvpjbby6QJdUKHMO0Z0BEphIIk7EUseZtVW8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwkElzf7t0oLbSb1nWUPLAe/6hb5jk/cwUu/QYz4MjODY/G2mv9
 +seNXu7waofkF5JNj0Jt6ZEgyuca8jn5us/w5KCwQLg2BHU3Gdc9X1kg
X-Gm-Gg: Acq92OHWgcQfNMVkgVHg7SJCm0WQUGFZNdP7+YGfqtJ5+hC+8vCWshTd2IqjurB0S31
 1FoasbN3zd+/3kTvPvCo6ttXDgpMHQ841ZvXT5PL2dl0MnDrQJ6HjKcjMYHQqtMrX9vdGQrg9TI
 kvuNyFdhOQT7lxYCBQQ6L/xtTbW1w9GUpFbOMX+gdW/PRjHkpm7tgv3ibykmq7mLhShVFL4eUWr
 M7ADJXVXzc0/vbxCUL+LsN6kKheZGbBsVVnPZiR3A24e+r051D7422csnEEytVh3NGPZJgY67xg
 t5X1m6Gh2iXtGMwj9zFbYQLsDD9Rku5qps+GZen9+ZdiAxiZmAN8fPfmD2yX0JRp8KQRvmOsnxJ
 R7tgg91LG7a23kBpiT6eijgRWWLebiGqpjlwf3uiGKx/BhIFIqpX8W2V5Z1bH//BddgZy/fSoKA
 Day4grfvJm6njD2d/XZmRKErWQa61XGIQr1CB1JpG2gILaZJVXnfLy9WDW6c7sqAqga7QdNCLYj
 tixkrny/3A=
X-Received: by 2002:a05:600d:8447:b0:48f:e230:80a1 with SMTP id
 5b1f17b1804b1-48fe6328b5fmr5516255e9.31.1778783423173; 
 Thu, 14 May 2026 11:30:23 -0700 (PDT)
Received: from dohko.chello.ie (188-141-5-72.dynamic.upc.ie. [188.141.5.72])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-48fd76801f2sm31320475e9.7.2026.05.14.11.30.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2026 11:30:22 -0700 (PDT)
From: David Carlier <devnexen@gmail.com>
To: anthony.l.nguyen@intel.com,
	przemyslaw.kitszel@intel.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 David Carlier <devnexen@gmail.com>
Date: Thu, 14 May 2026 19:30:19 +0100
Message-ID: <20260514183019.49527-1-devnexen@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1778783423; x=1779388223; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=QDvdudeeJAHgJGuZXL6tml+bzI7syuTzDcLB+eMLOx0=;
 b=RkJWZTCSxNC8i8a47wo9IYwjFyzsVywnn4PTNuBb/YyGNHWd4n8GLhUvv2O/t+tXO1
 7yrszo9wj7trbeXeDIJEfvgVF7HsEaYjjuf9ygRSD4BsQFPp06UTCQZe5cu82eZWJDsB
 tMjvhuKt/pCMWkU731I3G+7/vl8PKULIo05NXtS5DO+EOqNj0wLfjinHMTj/sgUdNcHr
 jv0HhsNGNHq3lu5KvEn+bUk3Asnb7hGfLXl+FTxW9EAS5kfUoZTJByqZlLtiRgNGEkX2
 /IdKBLkSM9a8KCK3duFNnBIDOGSS/hxWM1avJNwV/geN+RSqPqAefjOiky9MnN3JnJ52
 NSLQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=RkJWZTCS
Subject: [Intel-wired-lan] [PATCH net v2] idpf: handle NULL adev in
 idpf_idc_vdev_mtu_event
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
X-Rspamd-Queue-Id: 6D4A0545E19
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:devnexen@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,lists.osuosl.org,vger.kernel.org,gmail.com];
	FORGED_SENDER(0.00)[devnexen@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnexen@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

idpf_idc_vport_dev_ctrl(adapter, false) clears vport->vdev_info->adev
to NULL but keeps vport->vdev_info itself. An MTU change after that
calls idpf_idc_vdev_mtu_event(), which dereferences vdev_info->adev for
device_lock() before reaching the (!adev || ...) check.

Cache vdev_info->adev once with READ_ONCE() and bail out if NULL before
locking. Use the cached pointer on both the lock and unlock paths so
the unlock matches the device actually acquired and cannot re-fetch a
NULL slot.

Fixes: ed6e1c8796a4 ("idpf: implement IDC vport aux driver MTU change handler")
Cc: stable@vger.kernel.org
Signed-off-by: David Carlier <devnexen@gmail.com>
---
v2: cache vdev_info->adev with READ_ONCE() to avoid double-fetch and
    use the cached pointer on the unlock path (Alok Tiwari)
---
 drivers/net/ethernet/intel/idpf/idpf_idc.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
index b7d6b08fc89e..9f764135507c 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
@@ -162,9 +162,12 @@ void idpf_idc_vdev_mtu_event(struct iidc_rdma_vport_dev_info *vdev_info,
 
 	set_bit(event_type, event.type);
 
-	device_lock(&vdev_info->adev->dev);
-	adev = vdev_info->adev;
-	if (!adev || !adev->dev.driver)
+	adev = READ_ONCE(vdev_info->adev);
+	if (!adev)
+		return;
+
+	device_lock(&adev->dev);
+	if (!adev->dev.driver)
 		goto unlock;
 	iadrv = container_of(adev->dev.driver,
 			     struct iidc_rdma_vport_auxiliary_drv,
@@ -172,7 +175,7 @@ void idpf_idc_vdev_mtu_event(struct iidc_rdma_vport_dev_info *vdev_info,
 	if (iadrv->event_handler)
 		iadrv->event_handler(vdev_info, &event);
 unlock:
-	device_unlock(&vdev_info->adev->dev);
+	device_unlock(&adev->dev);
 }
 
 /**
-- 
2.53.0

