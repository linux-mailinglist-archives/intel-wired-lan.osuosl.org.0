Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 399CB9F5CF9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 03:44:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE9C1812AE;
	Wed, 18 Dec 2024 02:44:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oXeKBOxl2U4x; Wed, 18 Dec 2024 02:44:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1CFC81157
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734489890;
	bh=TFaVEYsO+0RIB0bo3fMP3mzQbKddwngJ+5DgQ8I1mWg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=V6y2nPAbPeEmVTc/cNIv4Mqhb3NXQFZPs1zfFtg8xwrtvOpG/nuNSrxuJ/0nQyBC9
	 1d4zWm8AE9D4Ti7COPU7Bei8Zk+t6bo0y1trrE0vKZlSjL5OHYmxcRTevdL/4gB/7f
	 hShsr+Dc/0q1j3ujJDfmJPH2Kt3xJBh1mTJ84mNgtjqMeskxDrZImmRWYk8FotpX39
	 569mCDLFMDrozzAnFVtV8HqhoGy3GXN/z6j15LxbwMSJos4t5Z1cpUAf3ajqH/Aqu2
	 qU0MsfWjkZltAm1LOItQhmoVb8LnB4ye2yV1PzmsoRCdK2R3HWlQlcYyJTMPmblJ52
	 gYjK4n9CSI6BQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1CFC81157;
	Wed, 18 Dec 2024 02:44:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3C451C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 02:44:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 160AF414DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 02:44:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l58kG_nW74pI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 02:44:48 +0000 (UTC)
X-Greylist: delayed 416 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 18 Dec 2024 02:44:47 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E10A414C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E10A414C6
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=en-wei.wu@canonical.com; receiver=<UNKNOWN> 
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E10A414C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 02:44:47 +0000 (UTC)
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 84CBC3F13F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 02:37:48 +0000 (UTC)
Received: by mail-pl1-f200.google.com with SMTP id
 d9443c01a7336-21650d4612eso74624275ad.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 18:37:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734489466; x=1735094266;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TFaVEYsO+0RIB0bo3fMP3mzQbKddwngJ+5DgQ8I1mWg=;
 b=oiXvJKPfeu30+XXa5vLGmI34fnvdE22OnWhrCboNOFxIMSmzMufi9R+QGOJlZkzER2
 QvRwixebwnu3O9YI3nttV4s0Ca+fOHbWiQuslKKh7RxG40opK1xFgjXp0ahvsepMvmfD
 k1j57PhwtohoAO3VS5TjWaBC6HK+SIuXKwrLI2a/lYsKMw4pJE8nv8OAL3l4v9BebOIt
 cRbiPyXuPZ6TZWOsppchZ/iFhXuB3lRHcTGwUrueTbevOxcs/G3W7+GlsXzFhVFM5wkY
 gm2Us7RzirTd4OVfVPCwNaiQVrZiCKZKC9f8IHOCA1JxCJTPv3qAOWIe0cgJ3uL8Mr9y
 szBA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW5Fev6YydrumRi7OYYZ+0a0hYUCLaYnFPtbRfMDK7WiEJvWz/qY271TRsVYQhyLuhB+p8LaQXUyUSTXH5qqqk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyH4oYDEOybIGdVp9J706OXkIXDdoNgbKxPAitsRQuXvDwd8NjA
 4/xOr22U2f5QoEJ/ouuF7U/2Y1ugRbp82SMesG5H5Z4X3doq65N9Yyl7l8b1B/UECsy9MmEFC6r
 QF6KMHAFiZE1LrPHjoELTl3ntgKRMX+ICfPke+xIPZbomnuFg2JT9SPHbp4WSuYs0xDBOzvtirt
 XdAHMb2FA=
X-Gm-Gg: ASbGncuX/p64k1St4m3J2vn8W2VgmUqPnh4yTmEDi+MnqhbHleZ8whibdt1pc8ABK6q
 TbQ+xCyPWHGZzGdd0LMy0KiYSt6wUiQgfdJfJDQ6buLtKvy+srgo1HtYulJPsWZzrNQVce8LLxe
 tThAF1dOhUxPLm4RbijQbkXBQwAVhiWbY+MO4SjXUsdznvEoEyM6abwKCtOD7dkdjHcxVxXXxBz
 B8ryZWcmDoVrA6VnUt0nwrhab/N+2YHVjOCodA6ngSOp6r5nkkbpCECgXbJQIWuyEhV8oAj40KH
 6dwSXO1Bjla7K25n8ep/QXSluuElDWeC/HYkRe14Ydr7tNY5Yu5NT6Frf40=
X-Received: by 2002:a17:903:234d:b0:216:4064:53ad with SMTP id
 d9443c01a7336-218d7258781mr20456605ad.48.1734489466672; 
 Tue, 17 Dec 2024 18:37:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFGnjXVQbSCPpcLEMs1vNBYJeTiWQaRdGDFeNo4OX7+T80FP/PD94tyzBKNkLNro+8IXcQ2nA==
X-Received: by 2002:a17:903:234d:b0:216:4064:53ad with SMTP id
 d9443c01a7336-218d7258781mr20456265ad.48.1734489466357; 
 Tue, 17 Dec 2024 18:37:46 -0800 (PST)
Received: from rickywu0421-ThinkPad-X1-Carbon-Gen-11..
 (118-163-61-247.hinet-ip.hinet.net. [118.163.61.247])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-219ce1b347fsm212475ad.78.2024.12.17.18.37.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2024 18:37:46 -0800 (PST)
From: En-Wei Wu <en-wei.wu@canonical.com>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: vitaly.lifshits@intel.com,
	Chia-Lin Kao <acelan.kao@canonical.com>
Date: Wed, 18 Dec 2024 10:37:42 +0800
Message-ID: <20241218023742.882811-1-en-wei.wu@canonical.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20210705; t=1734489468;
 bh=TFaVEYsO+0RIB0bo3fMP3mzQbKddwngJ+5DgQ8I1mWg=;
 h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
 b=EI/6q7VVnsLfzvvXGSdJ8AqJpAUMM6K+LL/HfQHSxl2bjQfF32RsXDi8CAf52xPWW
 TgGbvHLhgOBZRwVnHN5ZRs4OZSZFbRoDlQdknTJjETDgyVWcSMqEd892gJZfICig2f
 +0pQJtZe3/Nb6CTR8Ebxs76IemjtYg3VdmcDiJ13qo8pPPnRS/PjEexvKiMJzCw1g/
 wmvX5GoaY3yfyEAOMqHq3b2y4BjsFna/bjlzwmmujBcBOoH/7ug3AOqjf08rTMIbcr
 rEGOAyfOSY+J3CifjdJiRgjM702rTrqvU6robN5CftHq40Rh24eWadxqelKdKrC0wz
 PMabeS/jla1/Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20210705 header.b=EI/6q7VV
Subject: [Intel-wired-lan] [PATCH iwl-net v2] igc: return early when failing
 to read EECD register
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

When booting with a dock connected, the igc driver may get stuck for ~40
seconds if PCIe link is lost during initialization.

This happens because the driver access device after EECD register reads
return all F's, indicating failed reads. Consequently, hw->hw_addr is set
to NULL, which impacts subsequent rd32() reads. This leads to the driver
hanging in igc_get_hw_semaphore_i225(), as the invalid hw->hw_addr
prevents retrieving the expected value.

To address this, a validation check and a corresponding return value
catch is added for the EECD register read result. If all F's are
returned, indicating PCIe link loss, the driver will return -ENXIO
immediately. This avoids the 40-second hang and significantly improves
boot time when using a dock with an igc NIC.

Log before the patch:
[    0.911913] igc 0000:70:00.0: enabling device (0000 -> 0002)
[    0.912386] igc 0000:70:00.0: PTM enabled, 4ns granularity
[    1.571098] igc 0000:70:00.0 (unnamed net_device) (uninitialized): PCIe link lost, device now detached
[   43.449095] igc_get_hw_semaphore_i225: igc 0000:70:00.0 (unnamed net_device) (uninitialized): Driver can't access device - SMBI bit is set.
[   43.449186] igc 0000:70:00.0: probe with driver igc failed with error -13
[   46.345701] igc 0000:70:00.0: enabling device (0000 -> 0002)
[   46.345777] igc 0000:70:00.0: PTM enabled, 4ns granularity

Log after the patch:
[    1.031000] igc 0000:70:00.0: enabling device (0000 -> 0002)
[    1.032097] igc 0000:70:00.0: PTM enabled, 4ns granularity
[    1.642291] igc 0000:70:00.0 (unnamed net_device) (uninitialized): PCIe link lost, device now detached
[    5.480490] igc 0000:70:00.0: enabling device (0000 -> 0002)
[    5.480516] igc 0000:70:00.0: PTM enabled, 4ns granularity

Fixes: ab4056126813 ("igc: Add NVM support")
Cc: Chia-Lin Kao (AceLan) <acelan.kao@canonical.com>
Signed-off-by: En-Wei Wu <en-wei.wu@canonical.com>
---
Changes in v2:
- Added "after" logs showing improved boot time
- Fixed error code (use -ENXIO instead of -ENODEV)
- Added error propagation in igc_get_invariants_base()
- Added Fixes tag
- Added [PATCH iwl-net] prefix
- Changed original author from AceLan to En-Wei

 drivers/net/ethernet/intel/igc/igc_base.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index 9fae8bdec2a7..1613b562d17c 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -68,6 +68,10 @@ static s32 igc_init_nvm_params_base(struct igc_hw *hw)
 	u32 eecd = rd32(IGC_EECD);
 	u16 size;
 
+	/* failed to read reg and got all F's */
+	if (!(~eecd))
+		return -ENXIO;
+
 	size = FIELD_GET(IGC_EECD_SIZE_EX_MASK, eecd);
 
 	/* Added to a constant, "size" becomes the left-shift value
@@ -221,6 +225,8 @@ static s32 igc_get_invariants_base(struct igc_hw *hw)
 
 	/* NVM initialization */
 	ret_val = igc_init_nvm_params_base(hw);
+	if (ret_val)
+		goto out;
 	switch (hw->mac.type) {
 	case igc_i225:
 		ret_val = igc_init_nvm_params_i225(hw);
-- 
2.43.0

