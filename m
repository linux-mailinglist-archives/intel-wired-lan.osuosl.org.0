Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB9E566EBC
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 14:52:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73B2D4091C;
	Tue,  5 Jul 2022 12:52:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73B2D4091C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657025524;
	bh=vckuI2gS5WZA5Jnh2sVJEeGPCinGPuzpOPWtw+4K3HQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=nCUCCAG8YVYEZOqwblUC4nHCm9lMcTokXAz7PdOnQkryBElz++wR1rMSOn908ExTb
	 o961P9s7rv93x16H3NyfOSiNUtjZL3ASOIi4yEOtmpGskg95+O0oNwbBVz/AQAGrLj
	 nfHU8g+T98T9ZHlh7zQnnjYTiePE2Sb4RQplXj4AtXwe9VhZK+wmI6v9u7IGYyU/2d
	 DDAMtc0MnQQ5a0EiX293Y23N0WYZuIdCTU/fRxGse0IKIoWYcpUa7iY01XeOHxe9Bl
	 t8yz+pNTf+tVDVas2FqQCOy8oTQyq+y2Im4VM3nLau5vS9woIvToVymamEyCmyunQS
	 w2h9A4YyQwAzA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mO9GjYjHBdvt; Tue,  5 Jul 2022 12:52:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05CD34091A;
	Tue,  5 Jul 2022 12:52:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05CD34091A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F7071BF35F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 14:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 37AE6606F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 14:01:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37AE6606F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id USNiWOJcMUdP for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Jul 2022 14:01:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EF26606EB
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9EF26606EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Jul 2022 14:01:37 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id s1so13628693wra.9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 04 Jul 2022 07:01:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0RwqG+scDxa5sBRqSdCikrVrH/DlHuQpNG6BogojNcw=;
 b=u9H58wohqPYp0MinXYaxo5/r/Z6bIn2PPKYEY3GmwPbX1Cvbbm2pzero6ImfQIZh8C
 rXO0MwUpY2auyaYswIbl7nzMoFxfb0SQeU5elS+povlklx3Er7n8NEH7vRtXj+iXEEUz
 TElswYoBU2lt5znnNrKiNqDIPJo3gbee6XG6vrETgF+hV/+JtwL0bcN/FglfYS7OehQn
 We3Ean3K8kSH+bpiRjFzs8oGCD8bjLfu3UAhC+v+2r3ymQURFWjMwaR0vuYxXwW0jZLy
 j5LcBRCQBAJPF3hcyQwONK1lYqB6WtNlylKZRLuq1QI442g9XEzm18SYegwKLSQlwmVz
 cnTQ==
X-Gm-Message-State: AJIora95va4mlNrAQRgsCbJarvcuPIm/VI3qqIZp6mBk5nOMGfhYwcfR
 9EEXKEtk1rUvjncDzYLilNg=
X-Google-Smtp-Source: AGRyM1smRSj3Ife5KLTAkAievRyKaIgwIO/zIdO2R0orYgNnwofMXGR9OfYzMd2s/lnJBQ5AknUp2w==
X-Received: by 2002:a05:6000:1887:b0:21d:33c1:efd6 with SMTP id
 a7-20020a056000188700b0021d33c1efd6mr23299338wri.134.1656943295318; 
 Mon, 04 Jul 2022 07:01:35 -0700 (PDT)
Received: from localhost.localdomain
 (host-79-53-109-127.retail.telecomitalia.it. [79.53.109.127])
 by smtp.gmail.com with ESMTPSA id
 f7-20020a0560001b0700b0021d68e1fd42sm3963147wrz.89.2022.07.04.07.01.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Jul 2022 07:01:33 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Mon,  4 Jul 2022 16:01:29 +0200
Message-Id: <20220704140129.6463-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 05 Jul 2022 12:51:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0RwqG+scDxa5sBRqSdCikrVrH/DlHuQpNG6BogojNcw=;
 b=odnnTUp/LoUmKOUyIJo7vEDZ9yAuctYKOVpNuGmulrP9ucSUIzulweZaGGyx5FAYjS
 pKtpKxi4+NqK+MuIKSu9ZSW3m5/J4CZD6x12SiuRNc6W268Bu7bBLJedQSHalLOH3Dni
 /gb6Juv9w3rHsvJs7EYOlL7HBPp+qP8HHhDiIWrqC70++0qmzhrOY0dZd8xJqIFFTi1d
 GkOERF7j+9cILgoS2NHfS5QT0eU6lR/yhdvYRtMYRy9tXXaOcBsHeHsQacSPAJubQ+Jv
 Z0JebS6MOLja+VT6KCC3MFDQkpbg2heGJIdBA1Pl7CUgL5ungJ1Q1Ed3BEzeIHHWe9AU
 NvnA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=odnnTUp/
Subject: [Intel-wired-lan] [PATCH] ixgbe: Don't call kmap() on page
 allocated with GFP_ATOMIC
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
Cc: Ira Weiny <ira.weiny@intel.com>,
 "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Pages allocated with GFP_ATOMIC cannot come from Highmem. This is why
there is no need to call kmap() on them.

Therefore, don't call kmap() on rx_buffer->page() and instead use a
plain page_address() to get the kernel address.

Suggested-by: Ira Weiny <ira.weiny@intel.com>
Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 628d0eb0599f..71196fd92f81 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -1966,15 +1966,13 @@ static bool ixgbe_check_lbtest_frame(struct ixgbe_rx_buffer *rx_buffer,
 
 	frame_size >>= 1;
 
-	data = kmap(rx_buffer->page) + rx_buffer->page_offset;
+	data = page_address(rx_buffer->page) + rx_buffer->page_offset;
 
 	if (data[3] != 0xFF ||
 	    data[frame_size + 10] != 0xBE ||
 	    data[frame_size + 12] != 0xAF)
 		match = false;
 
-	kunmap(rx_buffer->page);
-
 	return match;
 }
 
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
