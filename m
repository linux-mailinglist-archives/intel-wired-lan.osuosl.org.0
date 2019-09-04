Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B867A85ED
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2019 17:07:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B326E87960;
	Wed,  4 Sep 2019 15:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PavL9sbAPnMu; Wed,  4 Sep 2019 15:07:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2C028790E;
	Wed,  4 Sep 2019 15:07:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6EEDE1BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2019 15:07:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 63DC8869EA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2019 15:07:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o7mgVY4SNyqE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2019 15:07:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16BBD869E4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2019 15:07:14 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id c10so9566471otd.9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Sep 2019 08:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:user-agent:mime-version
 :content-transfer-encoding;
 bh=igZsZ0dH+EIfH5MzGHYssyFYBGCrBbP03/TQYeZEM50=;
 b=VOKnX9boTah59OvOXcXeVx29zgAq3EQhEA2yr+183t8jhB/CYQBaTerov8uYD6yAJq
 0z5Ppy4o82QYD2XeJDKGuTABxBYKU72LalWKhtz5mA2lbu+u0xFKe0JQtl3fALT+6pZk
 apHtl/n/u39FdeRq/B5Yx1sYIjxkFAGMolMP1iAaZb/cQoRK1kIXh+EN/aWMZlgL7cg2
 Su0bFycgbA/NUsCTQvxuvHkUuDYltYw5/dNfbuP8G/oanjnL5z2w7lkPmOoWktzE3MhF
 4lm97mqICzvgpqKjUy1c5FY07SY7n6sIvA4euzaLtxGJTKyRVm9ssXoneRpGXh1aCYUZ
 bMYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=igZsZ0dH+EIfH5MzGHYssyFYBGCrBbP03/TQYeZEM50=;
 b=ITm2gQrsvOjOUWBKLuICepNvfssHfjBPpOk8DgB/2BFcWvRvaarkGOrGlts5w6RKtQ
 Laujr3d7AcR+smbLtOTQc59gSmpSUXrJrpsCF3zRRmYZmWUnuumqxI/Iwi+TlmWbmXIs
 SWlxJJt+W2h8XDogtiF8JL4n+zOSEefUXrm1q419QP6LJ1V+4BEzRyC4HIG1NhmIqeID
 ov4le8xn1u1mdnsdVK5eU5KjEBS0f2aWYafgsz0U5LcUSKTOgHSr9qbxVM1QK/ivANHd
 2jUVf5Rkrs6jPT37Oqt/artSrU3m7oJPEKzNsz2FtqZ4hqidJA5yXDhrLkcdN2AWLDH0
 0WeQ==
X-Gm-Message-State: APjAAAXjA4Tr57Zbdc1dYww5ey7FlZ0TUPCDkKBHWaG1Iew/QnHTmEgN
 IRTABikAMUZzI7mxlSpBlEE=
X-Google-Smtp-Source: APXvYqwJC7IZtMXmcLjmXr7WnfPHAfpuM6LUAP18mfYRU7hM5DeoMqeoTgbNmwOIMqPPS+gqwxxbCw==
X-Received: by 2002:a05:6830:c1:: with SMTP id
 x1mr12739641oto.272.1567609632821; 
 Wed, 04 Sep 2019 08:07:12 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id l30sm4653063otl.74.2019.09.04.08.07.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 08:07:12 -0700 (PDT)
From: Alexander Duyck <alexander.duyck@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 04 Sep 2019 08:07:11 -0700
Message-ID: <20190904150703.13516.21103.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-queue PATCH] ixgbe: Prevent u8 wrapping of
 ITR value to something less than 10us
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
Cc: alexander.h.duyck@linux.intel.com, gleventhal@janestreet.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alexander Duyck <alexander.h.duyck@linux.intel.com>

There were a couple cases where the ITR value generated via the adaptive
ITR scheme could exceed 126. This resulted in the value becoming either 0
or something less than 10. Switching back and forth between a value less
than 10 and a value greater than 10 can cause issues as certain hardware
features such as RSC to not function well when the ITR value has dropped
that low.

Reported-by: Gregg Leventhal <gleventhal@janestreet.com>
Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 5fa585dfddf6..097e6dfbf65a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -2621,7 +2621,7 @@ static void ixgbe_update_itr(struct ixgbe_q_vector *q_vector,
 		/* 16K ints/sec to 9.2K ints/sec */
 		avg_wire_size *= 15;
 		avg_wire_size += 11452;
-	} else if (avg_wire_size <= 1980) {
+	} else if (avg_wire_size < 1968) {
 		/* 9.2K ints/sec to 8K ints/sec */
 		avg_wire_size *= 5;
 		avg_wire_size += 22420;
@@ -2654,6 +2654,8 @@ static void ixgbe_update_itr(struct ixgbe_q_vector *q_vector,
 	case IXGBE_LINK_SPEED_2_5GB_FULL:
 	case IXGBE_LINK_SPEED_1GB_FULL:
 	case IXGBE_LINK_SPEED_10_FULL:
+		if (avg_wire_size > 8064)
+			avg_wire_size = 8064;
 		itr += DIV_ROUND_UP(avg_wire_size,
 				    IXGBE_ITR_ADAPTIVE_MIN_INC * 64) *
 		       IXGBE_ITR_ADAPTIVE_MIN_INC;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
