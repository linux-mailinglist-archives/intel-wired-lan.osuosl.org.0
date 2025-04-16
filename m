Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 823C2A8B771
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 13:09:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB36C4135A;
	Wed, 16 Apr 2025 11:09:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UfSPhLz3YPFh; Wed, 16 Apr 2025 11:09:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 592CA411C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744801793;
	bh=9sGBx/7Vpt85bGQXkOcKMWCGaBdunxMD0SLk88jGe2Y=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gp7PaTMJijZA2Ait/6f/xCxiekVLohztqUn+pnE/Mg/6014EPeuw8sXy7IB1Wil1x
	 86assln0zMq07CC2F7XsU93pHJUDrafhsIYlnRlFr7LIGICa5ByYT/O+y/l4KkoB5D
	 KUZyRjp/cndZ0nMdK7Ogf9rmaqZge6CpCoz/Y9IAs4xwItRacT0ombUPQTCoNyoW5V
	 X5Pqv259PcyH4RroQcDwbqJ4i9m3bO7IIylYim8yKvqHPHibrqiK9RBMRTFUnNQhlr
	 AzOoTo3YMs/EcgKn9f2Tc4h0N7QbfqNQ3Me6UeZsdc3FRNiDdEz/mGOXsIpApMNahO
	 q//0r7AU8kM5g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 592CA411C6;
	Wed, 16 Apr 2025 11:09:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A49DB435
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 11:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8AD4040BA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 11:09:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nTvZhJboedTV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 11:09:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::430; helo=mail-wr1-x430.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6F97440AB9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F97440AB9
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F97440AB9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 11:09:50 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id
 ffacd0b85a97d-3913d129c1aso441777f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 04:09:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744801788; x=1745406588;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9sGBx/7Vpt85bGQXkOcKMWCGaBdunxMD0SLk88jGe2Y=;
 b=ec5+KBNLD4mwMoCa66PgFiJTG4BeOvIHEjx2D7VIllFQ1bdaSh8XKw1Afi9/EbvVJZ
 OoK1Kor7lTBWCNe7eyvDbvYmn1bA6FORRa3PeNc7TBRStbqQl3OuPYwHhHmV9zeqMk1E
 eVhShJd4XohCu13qC7V2ORR28rBwAQavfp8bJqBcqA9hixTwm/q7sooFNwAWLop76zGz
 7fRCnyYIjywY5whh+2pIEjdN9zyHCt3XhhqH1n5KLm+KyH3GtpkPvHzvJIYl85KuTjLA
 Ohqh0Uwf1DUDTVRDSPWuV3aYVmaKcX7+dJm8GGteFURRWrxyTzQE66XVc0dfe5mJage9
 p0Xg==
X-Gm-Message-State: AOJu0YzkeH7GHNXZbcY0GpXJ61gdimnPW1qHT9nBdRplsOdK1XYdZ0O3
 kYU7e9uvQGr5+Gh3x1ohHtJNN4CBjxp2A2HdGG6hTV75efWEC0TFRDcyOeooR2w=
X-Gm-Gg: ASbGncuEWKF13OqKTiHjAMFpN+JF8zUo36B7at3QF8aO/ftrzYJD8YPVAl3fyyEtb/v
 SDshFsBW4nyIwXYFjSNRY0rCqEf1nY19MZOBffCxaav4XyM14OpgPSNj55V6cN3vS+C2dzJY1JI
 AZ6S6rGXsFpMbZxaqngQnhbK0pHo9NeFi7h+q20UctkZUUgrID74trbrAWCtK4LKYzJm0f3bDUj
 R6uPu3hxd7AYq6CyZ+ZT5xx/441AmMQDVEoBEGjn1OFWAoQT58NBL72/tGWqM2c9XCvQrZGTh6H
 PZdBcJM2D5CS+GVfd4xghJDVi9YQLaiHIaOzcBln3x4kqA==
X-Google-Smtp-Source: AGHT+IHx7MYQN4B8vZhw3h6d0Xyzb/YDJ0VgXDSFIkh0nx2d4MfQsJUNDMvihMSE7oLeCoFPsNBDwg==
X-Received: by 2002:a5d:6485:0:b0:390:f0ff:2c10 with SMTP id
 ffacd0b85a97d-39ee5ee4ab8mr1258006f8f.19.1744801788124; 
 Wed, 16 Apr 2025 04:09:48 -0700 (PDT)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-39eaf43ce30sm17232725f8f.62.2025.04.16.04.09.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Apr 2025 04:09:47 -0700 (PDT)
Date: Wed, 16 Apr 2025 14:09:44 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Christopher S M Hall <christopher.s.hall@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <Z_-P-Hc1yxcw0lTB@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1744801788; x=1745406588; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9sGBx/7Vpt85bGQXkOcKMWCGaBdunxMD0SLk88jGe2Y=;
 b=wJOY9FcKSPbWi8HcdPvxUXWpFIuXA5pA/T26Mu5+9k1fQw81wesxPQahzN4BNmRzWd
 H3XpBqciYtiYzUDlkG8f67HQwN8Dmcm5q9KFAiUZJZ5rH3AmKNZu9txyGmS9ZhlJpx4j
 +i5uVvxNAoOy+Vkosg/EkC2C3d95pADXp+tZ0R0HxapbN1AeXiZGJD4hkKzGDTVJNjQS
 B/GqIdOhRtSG+6dqrk4aOCLa+JDPyvyLjHkd4YUiwCEWhv+2ZZL9+WZfldvATNApPUqe
 2EOMxJxY3jnrUEbYfyV3ApvrPm38fM/fQ2+BLdNat38cGDVKbGMzuL7fhrwEph1PtSea
 NjZA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=wJOY9FcK
Subject: [Intel-wired-lan] [bug report] igc: add lock preventing multiple
 simultaneous PTM transactions
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

Hello Christopher S M Hall,

Commit 1a931c4f5e68 ("igc: add lock preventing multiple simultaneous
PTM transactions") from Apr 1, 2025 (linux-next), leads to the
following Smatch static checker warning:

	drivers/net/ethernet/intel/igc/igc_ptp.c:1311 igc_ptp_reset()
	warn: sleeping in atomic context

drivers/net/ethernet/intel/igc/igc_ptp.c
    1280 void igc_ptp_reset(struct igc_adapter *adapter)
    1281 {
    1282         struct igc_hw *hw = &adapter->hw;
    1283         u32 cycle_ctrl, ctrl, stat;
    1284         unsigned long flags;
    1285         u32 timadj;
    1286 
    1287         if (!(adapter->ptp_flags & IGC_PTP_ENABLED))
    1288                 return;
    1289 
    1290         /* reset the tstamp_config */
    1291         igc_ptp_set_timestamp_mode(adapter, &adapter->tstamp_config);
    1292 
    1293         spin_lock_irqsave(&adapter->tmreg_lock, flags);
                 ^^^^^^^^^^^^^^^^^
Holding a spin_lock

    1294 
    1295         switch (adapter->hw.mac.type) {
    1296         case igc_i225:
    1297                 timadj = rd32(IGC_TIMADJ);
    1298                 timadj |= IGC_TIMADJ_ADJUST_METH;
    1299                 wr32(IGC_TIMADJ, timadj);
    1300 
    1301                 wr32(IGC_TSAUXC, 0x0);
    1302                 wr32(IGC_TSSDP, 0x0);
    1303                 wr32(IGC_TSIM,
    1304                      IGC_TSICR_INTERRUPTS |
    1305                      (adapter->pps_sys_wrap_on ? IGC_TSICR_SYS_WRAP : 0));
    1306                 wr32(IGC_IMS, IGC_IMS_TS);
    1307 
    1308                 if (!igc_is_crosststamp_supported(adapter))
    1309                         break;
    1310 
--> 1311                 mutex_lock(&adapter->ptm_lock);
                         ^^^^^^^^^^
So we can't take a mutex.

    1312                 wr32(IGC_PCIE_DIG_DELAY, IGC_PCIE_DIG_DELAY_DEFAULT);
    1313                 wr32(IGC_PCIE_PHY_DELAY, IGC_PCIE_PHY_DELAY_DEFAULT);
    1314 
    1315                 cycle_ctrl = IGC_PTM_CYCLE_CTRL_CYC_TIME(IGC_PTM_CYC_TIME_DEFAULT);
    1316 
    1317                 wr32(IGC_PTM_CYCLE_CTRL, cycle_ctrl);
    1318 
    1319                 ctrl = IGC_PTM_CTRL_EN |
    1320                         IGC_PTM_CTRL_START_NOW |
    1321                         IGC_PTM_CTRL_SHRT_CYC(IGC_PTM_SHORT_CYC_DEFAULT) |
    1322                         IGC_PTM_CTRL_PTM_TO(IGC_PTM_TIMEOUT_DEFAULT);
    1323 
    1324                 wr32(IGC_PTM_CTRL, ctrl);
    1325 
    1326                 /* Force the first cycle to run. */
    1327                 igc_ptm_trigger(hw);
    1328 
    1329                 if (readx_poll_timeout_atomic(rd32, IGC_PTM_STAT, stat,
    1330                                               stat, IGC_PTM_STAT_SLEEP,
    1331                                               IGC_PTM_STAT_TIMEOUT))
    1332                         netdev_err(adapter->netdev, "Timeout reading IGC_PTM_STAT register\n");
    1333 
    1334                 igc_ptm_reset(hw);
    1335                 mutex_unlock(&adapter->ptm_lock);
    1336                 break;
    1337         default:
    1338                 /* No work to do. */
    1339                 goto out;
    1340         }
    1341 
    1342         /* Re-initialize the timer. */
    1343         if (hw->mac.type == igc_i225) {
    1344                 igc_ptp_time_restore(adapter);
    1345         } else {
    1346                 timecounter_init(&adapter->tc, &adapter->cc,
    1347                                  ktime_to_ns(ktime_get_real()));
    1348         }
    1349 out:
    1350         spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
    1351 
    1352         wrfl();
    1353 }

regards,
dan carpenter
