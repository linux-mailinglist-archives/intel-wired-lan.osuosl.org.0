Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5CD5603E6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Jun 2022 17:12:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E33954116B;
	Wed, 29 Jun 2022 15:12:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E33954116B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656515525;
	bh=yIVm8blW8Pib70QpGvpGBBsLs3mbz5tbAhSo8C/el60=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=417JOHKAiNdspcks89pFoGCbVOnyBOy2QfNa2p28GaBCTeyHQumb9j9bmffweH9Nm
	 JJGzqe5ufNHRZGe/hZGDIBsedEfLKCg1FsP0MHsPaN0lv0lTDFRJqDOCktaKhxPdDJ
	 d7E21/eX6oB7LBXGsoBybfnF2WgDg9gwu2rRipJHVcwOKxuEHDNXNbv9Jfh/tROuoh
	 KZn6apWPrw5Ueqj+reZqyCHpdgFaAUhykSDyDesBWAMSErwwGU8vdE1Uu337btp2g0
	 6wlhE/vV+1Ee6zxYsCaVGg6c+85TWukood0Jb55Tp43V7LvkgYeXQK6BXUs1/NPZrz
	 gwOTP5gDtu2Uw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nZJu0Zo4F480; Wed, 29 Jun 2022 15:12:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCAAF40157;
	Wed, 29 Jun 2022 15:12:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCAAF40157
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC0A31BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 08:58:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 860A1813D6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 08:58:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 860A1813D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cgpb58htFlh5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Jun 2022 08:58:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D28F813C6
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D28F813C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 08:58:43 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id c13so21205377eds.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Jun 2022 01:58:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=r++121sbLgXWyC87t6HhBYGjFC1OZo7m/Al81TbSLAc=;
 b=8HOVdIkhtSwDRBq2JKYGruPNoKpETpF54qznou+mg9E73hZ7s5yvZIZhTrRyOBoVhW
 ImHZD7F5mqWzR+EIKCrtsRVFegi9Qc+W8f0h/ExTw70pncAHstVy4TqQDlZQoSWaDyRU
 R4ooUOC1uX1tZmC9tn3tZ9VuS3TsLO8YRajpzrdt94K/h5/CZWKSC40Gn/Q/HfBbL3jT
 Bj5pV1GlYhgPevJH1y2ETkMkRsCgqOVHD7rqcQT1ZRZXJIoIrelPYLHmaVwoq5LkyCZe
 AXKkC5PYpnjodooJDGBljljgpqRaug+eWaA3meQQ8Ws5xfrIA83OFCXP7o94LzdSdHoO
 6iwA==
X-Gm-Message-State: AJIora+sUhnlsZufSj6NaJx97JThr0umLc0R1CGhqlIu5S7teVeSOKgE
 1khdFv+LAtzm/fRv8TS1d44=
X-Google-Smtp-Source: AGRyM1tAyTjbfqt55MKCcHD0WymqazhAWk4ybuv3YQ8j6WxGsH0iTFjyiTpmDaLtRbAiv1DK0y0lbQ==
X-Received: by 2002:a05:6402:4387:b0:435:94c6:716d with SMTP id
 o7-20020a056402438700b0043594c6716dmr2837654edc.298.1656493121725; 
 Wed, 29 Jun 2022 01:58:41 -0700 (PDT)
Received: from localhost.localdomain
 (host-87-6-98-182.retail.telecomitalia.it. [87.6.98.182])
 by smtp.gmail.com with ESMTPSA id
 a18-20020a170906671200b00718e4e64b7bsm7489740ejp.79.2022.06.29.01.58.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Jun 2022 01:58:39 -0700 (PDT)
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
Date: Wed, 29 Jun 2022 10:58:36 +0200
Message-Id: <20220629085836.18042-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 29 Jun 2022 15:11:26 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=r++121sbLgXWyC87t6HhBYGjFC1OZo7m/Al81TbSLAc=;
 b=QRckV6V4u2oiBdEL0UBUoDQqliBh7zDWCo7k1wV03x1E23P11wbDeU1C05lwfZlo7U
 LS+eADyHaw9InWhCnF/7orpv+hOmwZAOR6FUSY7KN9zvf8S+nx0qNzodpfbGArqJzex6
 BmGLDdZrXozYghL4CSdujGNIKFF5x3xfGQarw24QAtndrBGt/4CyrPusRrD5cGMnV82R
 Ctr1zok0+gHGhnUpNKHnXamxIHOcNfsMC758001icFlfMLfMm+jhN2k4Kyx2QCybyWWG
 r2bc3KP926tzQLNJZS3tETF5L4vlpvYabcqn2Ez5OkrjqnoV4tJwPSodC5ynDlKv3ERf
 l45A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=QRckV6V4
Subject: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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

The use of kmap() is being deprecated in favor of kmap_local_page().

With kmap_local_page(), the mapping is per thread, CPU local and not
globally visible. Furthermore, the mapping can be acquired from any context
(including interrupts).

Therefore, use kmap_local_page() in ixgbe_check_lbtest_frame() because
this mapping is per thread, CPU local, and not globally visible.

Suggested-by: Ira Weiny <ira.weiny@intel.com>
Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 628d0eb0599f..e64d40482bfd 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -1966,14 +1966,14 @@ static bool ixgbe_check_lbtest_frame(struct ixgbe_rx_buffer *rx_buffer,
 
 	frame_size >>= 1;
 
-	data = kmap(rx_buffer->page) + rx_buffer->page_offset;
+	data = kmap_local_page(rx_buffer->page) + rx_buffer->page_offset;
 
 	if (data[3] != 0xFF ||
 	    data[frame_size + 10] != 0xBE ||
 	    data[frame_size + 12] != 0xAF)
 		match = false;
 
-	kunmap(rx_buffer->page);
+	kunmap_local(data);
 
 	return match;
 }
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
