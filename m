Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 614E79B7E2F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2024 16:20:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4E5E80F33;
	Thu, 31 Oct 2024 15:20:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BDLpqQ5M_-Dx; Thu, 31 Oct 2024 15:20:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7768980F0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730388011;
	bh=tf88+MjxuRscGCJUWSV+JgU09beZteKvue7KtOwrEjg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Y8VUy9WLt0FI9E2bWv6RFgswDsgkmXEfK0SB0UnNynFM0FC2VuWkHSPfybHRo1/tl
	 hUgpQR5VciNc73MdXB6cym41hQgGMjuf4+aAQsjURrLx/s43iHlqyhZhmTAi4OpTDa
	 Urg9RkpFTqdtn2JUpPI0ZDBCWOGQKHLVZVTkb37OOKeeFrGYx+zGXiyHOvSZ+FZhGs
	 MwEs6REI2LD1dnazYwprq5THm5eimQRPLozCUT2h/5YIS1bM1Ua8aHhug/8RRoHUEp
	 bgonYtJLLcELsXgMEI5KWmMmju4djgngPhiM354WE1Ay9OXMaM1KTYg2ADJpPx1MgD
	 6Bxkgib+Kxamg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7768980F0D;
	Thu, 31 Oct 2024 15:20:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 54E825E50
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 00:23:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3318280C5B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 00:23:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id skM6lIwbA6hm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2024 00:23:46 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::161; helo=mail-il1-x161.google.com;
 envelope-from=csander@purestorage.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 443EA80C10
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 443EA80C10
Received: from mail-il1-x161.google.com (mail-il1-x161.google.com
 [IPv6:2607:f8b0:4864:20::161])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 443EA80C10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2024 00:23:45 +0000 (UTC)
Received: by mail-il1-x161.google.com with SMTP id
 e9e14a558f8ab-3a3a4fac259so293915ab.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 17:23:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730334224; x=1730939024;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tf88+MjxuRscGCJUWSV+JgU09beZteKvue7KtOwrEjg=;
 b=EU5GKyhF1ZQy45L/UWP+KLeHyU4DVz31AGbDKK5N6IigK5K6jUlpLB2iJkVkmKR5+3
 NnDJmBgY1gtKor365Nb5LrRXUWeornjUBgbmohyfuIkeNafjYCR8LKcTYEGRQaTYsVlz
 xauxMOiVvOxp2e0L1ZCRsMHn/57nGhPeMicwo2Odtww1DrBrRErxUrfv1a6wbyoyOYd+
 VVlKoCKyJZQ/aT2CG8C37jqJNtnu9PpHD68FQPm7WBRM9FK5JixJlpW8foUBtld5q4fz
 wGb5cQXy+WbFzBis1a5v8ADZaNu/sVr8d3d3mu7EXdARzFL6ixNT14kWew/PREh3CJof
 jpCQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVIKZs0owK7B4k5xmDZINq9WAwRJvd/umWku/CkyIA1dNnSZByUME5P3BRK6VY9ly2endGfdZBSV8EVYf/y0w0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyJQV67gPVnfYe/dR3TD26h0FY6iYy0IdWlCKeHlf5F6NGhyBCt
 cuul2lVTPNpweL9OVtgPjJqVPMlnnBgmMwdvRgnM8Rhw2TE0Mx7JQMUJqxSp6no3y9xzY8VWaYg
 wCFq4PZ6t0UHtpq7cRX56lHav6IBbqE0d7a3TVZ2ot0VxKjB2
X-Google-Smtp-Source: AGHT+IFctfwfFkMLSXWKissVysXhbwAhZuukj/l7GUQRUQP8VHt+M3bWpakPEOY0QFlU+31rWrfy/nfQ3PTS
X-Received: by 2002:a92:ca47:0:b0:3a0:a1ab:7ce6 with SMTP id
 e9e14a558f8ab-3a4ed26cc3amr47563395ab.1.1730334224191; 
 Wed, 30 Oct 2024 17:23:44 -0700 (PDT)
Received: from c7-smtp-2023.dev.purestorage.com ([2620:125:9017:12:36:3:5:0])
 by smtp-relay.gmail.com with ESMTPS id
 e9e14a558f8ab-3a6a99c9259sm108935ab.46.2024.10.30.17.23.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2024 17:23:44 -0700 (PDT)
X-Relaying-Domain: purestorage.com
Received: from dev-csander.dev.purestorage.com
 (dev-csander.dev.purestorage.com [10.7.70.37])
 by c7-smtp-2023.dev.purestorage.com (Postfix) with ESMTP id DC5C734039C;
 Wed, 30 Oct 2024 18:23:42 -0600 (MDT)
Received: by dev-csander.dev.purestorage.com (Postfix, from userid 1557716354)
 id D5083E40A10; Wed, 30 Oct 2024 18:23:42 -0600 (MDT)
From: Caleb Sander Mateos <csander@purestorage.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Arthur Kiyanovski <akiyano@amazon.com>,
 Brett Creeley <brett.creeley@amd.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 David Arinzon <darinzon@amazon.com>,
 "David S. Miller" <davem@davemloft.net>, Doug Berger <opendmb@gmail.com>,
 Eric Dumazet <edumazet@google.com>,
 =?UTF-8?q?Eugenio=20P=C3=A9rez?= <eperezma@redhat.com>,
 Felix Fietkau <nbd@nbd.name>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Geetha sowjanya <gakula@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jakub Kicinski <kuba@kernel.org>, Jason Wang <jasowang@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>, Leon Romanovsky <leon@kernel.org>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Louis Peens <louis.peens@corigine.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Michael Chan <michael.chan@broadcom.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Noam Dagan <ndagan@amazon.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Roy Pledge <Roy.Pledge@nxp.com>, Saeed Bishara <saeedb@amazon.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Sean Wang <sean.wang@mediatek.com>,
 Shannon Nelson <shannon.nelson@amd.com>,
 Shay Agroskin <shayagr@amazon.com>, Simon Horman <horms@kernel.org>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, Tal Gilboa <talgi@nvidia.com>,
 Tariq Toukan <tariqt@nvidia.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>
Cc: Caleb Sander Mateos <csander@purestorage.com>,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org,
 oss-drivers@corigine.com, virtualization@lists.linux.dev
Date: Wed, 30 Oct 2024 18:23:25 -0600
Message-ID: <20241031002326.3426181-1-csander@purestorage.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 31 Oct 2024 15:20:09 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google2022; t=1730334224; x=1730939024;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=tf88+MjxuRscGCJUWSV+JgU09beZteKvue7KtOwrEjg=;
 b=D8JrbVkKUgL9QfcfH+0mF80/YFTFhsNzEu1dZRmLHVARaHnnf8upcxPKHjlkAWuKKC
 2NSJznTSKKyCjZ8ONOmzFyuJoT6uQ1FpuoDk0dWSq9Zvn+iNd66athszzlw18UkBdpod
 WraUvXTOjJwulix+XY9apNBSvtJesBTYWr57YeufCm8585IvRmX0+xEWFDC5XyN6zTOb
 3Xlm4+4IK0pFEdDdivMdECkp44qnevoUT/RKx5XmegdLrZKh6FA6EgPF3u3ifkMHZ/Xc
 OI3CnljhikoXWy45OyqxkSHO1PM2Yf+D+twQWbA7jpWUlcGJZUNJmKJiL2DQqIB06H52
 xumQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=purestorage.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=purestorage.com header.i=@purestorage.com
 header.a=rsa-sha256 header.s=google2022 header.b=D8JrbVkK
Subject: [Intel-wired-lan] [resend PATCH 1/2] dim: make dim_calc_stats()
 inputs const pointers
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

Make the start and end arguments to dim_calc_stats() const pointers
to clarify that the function does not modify their values.

Signed-off-by: Caleb Sander Mateos <csander@purestorage.com>
---
 include/linux/dim.h | 3 ++-
 lib/dim/dim.c       | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/linux/dim.h b/include/linux/dim.h
index 1b581ff25a15..84579a50ae7f 100644
--- a/include/linux/dim.h
+++ b/include/linux/dim.h
@@ -349,11 +349,12 @@ void dim_park_tired(struct dim *dim);
  *
  * Calculate the delta between two samples (in data rates).
  * Takes into consideration counter wrap-around.
  * Returned boolean indicates whether curr_stats are reliable.
  */
-bool dim_calc_stats(struct dim_sample *start, struct dim_sample *end,
+bool dim_calc_stats(const struct dim_sample *start,
+		    const struct dim_sample *end,
 		    struct dim_stats *curr_stats);
 
 /**
  *	dim_update_sample - set a sample's fields with given values
  *	@event_ctr: number of events to set
diff --git a/lib/dim/dim.c b/lib/dim/dim.c
index 83b65ac74d73..97c3d084ebf0 100644
--- a/lib/dim/dim.c
+++ b/lib/dim/dim.c
@@ -52,11 +52,12 @@ void dim_park_tired(struct dim *dim)
 	dim->steps_left   = 0;
 	dim->tune_state   = DIM_PARKING_TIRED;
 }
 EXPORT_SYMBOL(dim_park_tired);
 
-bool dim_calc_stats(struct dim_sample *start, struct dim_sample *end,
+bool dim_calc_stats(const struct dim_sample *start,
+		    const struct dim_sample *end,
 		    struct dim_stats *curr_stats)
 {
 	/* u32 holds up to 71 minutes, should be enough */
 	u32 delta_us = ktime_us_delta(end->time, start->time);
 	u32 npkts = BIT_GAP(BITS_PER_TYPE(u32), end->pkt_ctr, start->pkt_ctr);
-- 
2.45.2

