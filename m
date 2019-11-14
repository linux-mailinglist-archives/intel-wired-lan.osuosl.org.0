Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8ACEFCE0B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 19:45:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41694882C2;
	Thu, 14 Nov 2019 18:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nb54VT64ksbK; Thu, 14 Nov 2019 18:45:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 796F0882C7;
	Thu, 14 Nov 2019 18:45:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 97D611BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8B8492326C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IsKg73r+3Rsx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 18:45:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id DA318204C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:18 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id bb5so3032059plb.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 10:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vsKoGi0FAC/KrsCxzqHSC+UAZbZLyyk3Sb9n5a/c8+M=;
 b=UF7sT9Huk8CwaoJ/o40DDCTT/XQXjkRS/Kkm9BTkDPq++KwOvvi7SjA3kI4g1gV//E
 8zyDRdmJcBKoEwbeZFLPX+ZWyeMO9Cgn7ASWB8f8qTEGJB/MR4xc8JfTbqhu/u71ydRo
 bMrjIqT4CQ7a7pwFX0QyUXEyWeC/RQg7200s9OY7X4zPlnMqMLPKxABcttFK1hOL5NnC
 KiodeB6VYv4LEiBiDk+KbKpy45MPT5G+PzU/rXv18b+75ZGmvhyJKjEsJtIKRRJSzm5+
 l2IdXNpUvOs2ig0EuIcNIcvjn8mKWySh3g7VQ+MAkWyZsx8AVe/UTtbieL3eLjtS/5yN
 AjGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vsKoGi0FAC/KrsCxzqHSC+UAZbZLyyk3Sb9n5a/c8+M=;
 b=LIQ3Fx1Z3iX9swd+0QrLeMMPkRv3YLfrxk24ku4IFvCrrDVBP35QLRlmDP0bB71D4a
 cziQH27A6Oh2Hi0pBnwHG3Z4ksJ/PmVPJk8/oktTQ5hY4eljak6SxruvwmEnEw5FJdLW
 L3QDoWZZydha9Y0xg0pw7UW/M1M4a7t7XU89hMzQUhbk0/P86G9FZpqbPioQvSwVa2Ve
 F+mLD6FYJ5SiYE1YIxSg6YGcDRMNwv2UjCLVVUhCS1437BZ5+O9IdCO791yptD8pbMol
 dRKq4CUmPiSRCltfvP7o4lB5DiEySiSrD3ZbsynkvaOSbspnQZwQ8ueFjxnvIz6lhFTl
 sEUg==
X-Gm-Message-State: APjAAAVOJQW/Mdqg/YemV7pBelGMJQohIHAyOybFGhetWgv/1CrGfi4I
 CVnoyi5R2rW/axlS0Xp3uOc=
X-Google-Smtp-Source: APXvYqwhciTpKJzbRyHRYFGGedeC3yTKw8ODZa10zfyFovb9ZxO8M1O59zcAlG4HNhdnokF2i5QCYg==
X-Received: by 2002:a17:902:b702:: with SMTP id
 d2mr11057777pls.104.1573757118249; 
 Thu, 14 Nov 2019 10:45:18 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id 23sm6819507pgw.8.2019.11.14.10.45.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:45:17 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 14 Nov 2019 10:45:00 -0800
Message-Id: <20191114184507.18937-7-richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 06/13] mlx5: reject unsupported
 external timestamp flags
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
Cc: Christopher Hall <christopher.s.hall@intel.com>,
 Brandon Streiff <brandon.streiff@ni.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Eugenia Emantayev <eugenia@mellanox.com>, Feras Daoud <ferasda@mellanox.com>,
 intel-wired-lan@lists.osuosl.org, David Miller <davem@davemloft.net>,
 Stefan Sorensen <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

Fix the mlx5 core PTP support to explicitly reject any future flags that
get added to the external timestamp request ioctl.

In order to maintain currently functioning code, this patch accepts all
three current flags. This is because the PTP_RISING_EDGE and
PTP_FALLING_EDGE flags have unclear semantics and each driver seems to
have interpreted them slightly differently.

[ RC: I'm not 100% sure what this driver does, but if I'm not wrong it
      follows the dp83640:

  flags                                                 Meaning
  ----------------------------------------------------  --------------------------
  PTP_ENABLE_FEATURE                                    Time stamp rising edge
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE                    Time stamp rising edge
  PTP_ENABLE_FEATURE|PTP_FALLING_EDGE                   Time stamp falling edge
  PTP_ENABLE_FEATURE|PTP_RISING_EDGE|PTP_FALLING_EDGE   Time stamp falling edge
]

Cc: Feras Daoud <ferasda@mellanox.com>
Cc: Eugenia Emantayev <eugenia@mellanox.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Richard Cochran <richardcochran@gmail.com>
---
 drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c b/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
index cff6b60de304..9a40f24e3193 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/lib/clock.c
@@ -236,6 +236,12 @@ static int mlx5_extts_configure(struct ptp_clock_info *ptp,
 	if (!MLX5_PPS_CAP(mdev))
 		return -EOPNOTSUPP;
 
+	/* Reject requests with unsupported flags */
+	if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
+				PTP_RISING_EDGE |
+				PTP_FALLING_EDGE))
+		return -EOPNOTSUPP;
+
 	if (rq->extts.index >= clock->ptp_info.n_pins)
 		return -EINVAL;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
