Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D132676551
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 09:55:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E745D41D8E;
	Sat, 21 Jan 2023 08:55:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E745D41D8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674291338;
	bh=mo08V1QN60Zr26Rr4G3/nCmeBuTjoYJX2Hr54psCN2g=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=kLbz1GS45y7g9ktczrH2Wf70Sc2RxDH/JoEgUOsl42wCmlJP96dEllZsGCAvcJGYM
	 dAgMyJ1b4nBhh4fEMLTKLCLTlTyU5NWXgt4kw+BXsQ1yT1HacZNUIgYQnyJuBw9NQ2
	 HuvgLh2cA9SbYSS+f8hMGmHkYd1LBVvcPlL44u2lCJIuFPbqP7++xg2Ffv/JHeBxZL
	 XTzFV29P3mRmlW1oiqRCzfegQIiDKIc01BYut91XwOENfYq1NAb3JrZv4FmNYYjwRD
	 OHAVwTwcwenBScBNvvb7KyHp3dkW+KBkbf3BxosG1VUapM7SYqzDuSOwkf3Nq7OOPC
	 O2TFYGWTmUKWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qZRS4rvklkd3; Sat, 21 Jan 2023 08:55:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9535F41D16;
	Sat, 21 Jan 2023 08:55:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9535F41D16
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 98FE81BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 08:55:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7639960B04
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 08:55:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7639960B04
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iqmI99JouX7Z for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Jan 2023 08:55:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B18D460759
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com
 [IPv6:2607:f8b0:4864:20::52b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B18D460759
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 08:55:29 +0000 (UTC)
Received: by mail-pg1-x52b.google.com with SMTP id r18so5770253pgr.12
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jan 2023 00:55:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PrnGpbTnMcSAdRfQebkBMLK0G9v/WsMM46OOzL4dzDA=;
 b=w+ezz6u7joLA6dGYV30YN0yfRJYXVl47vlMKEeuFOGIOaNN+cys0kAcGfRDemMEptD
 lAcccTBC9DeSMXd+owttD5FjFaHEWEFOR4amCG2Z4cfGBUfxiqCQg4BJYM/Mpf8c7Nhu
 EgeWBC2z1zSCOZDeaVFhUeSPLgynrfDAV+NUJ5svkL5UNik11toCYUx1cwIAkL8bkRyO
 ljB+d2FCBF38M1XJzfxAjPuMtPm8+IZFgsgubYNZcA240g9z5yJDSChtO5mp8Tjt1ogD
 bCxZP+FGra2VLVvYo1w1fB+RpA88huB+Ksi1pw68UY7n8YB/D8HV/QMLhSoy2ORdZG/r
 dQeQ==
X-Gm-Message-State: AFqh2ko0/jo83NCKuueO/iE7PRBXPOGT0tWq2BC31EEcD8uz0PST9/Mk
 zB5AwDV7+rPpnXEcWWznecg=
X-Google-Smtp-Source: AMrXdXtzJGv9kNgIMLdl5kpmHw6/WyaUEOpyP69CLf2iz6zCwj0mx2VTlDKl6zncSY40xuVA9FpLLg==
X-Received: by 2002:a62:148d:0:b0:58b:ca43:9c05 with SMTP id
 135-20020a62148d000000b0058bca439c05mr16399291pfu.16.1674291328948; 
 Sat, 21 Jan 2023 00:55:28 -0800 (PST)
Received: from KERNELXING-MB0.tencent.com ([114.253.32.172])
 by smtp.gmail.com with ESMTPSA id
 z4-20020aa79484000000b005823b7da05asm11927073pfk.122.2023.01.21.00.55.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Jan 2023 00:55:28 -0800 (PST)
From: Jason Xing <kerneljasonxing@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, richardcochran@gmail.com, ast@kernel.org,
 daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.co
Date: Sat, 21 Jan 2023 16:55:21 +0800
Message-Id: <20230121085521.9566-1-kerneljasonxing@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=PrnGpbTnMcSAdRfQebkBMLK0G9v/WsMM46OOzL4dzDA=;
 b=SDgmsuHEoebuFkYmBvrFkLKy8cp1wMRSw6dwPIcLHUVNjujn6pQvfS04Kd66UAr6jg
 gQHORYgc8k4DFh4N1th30dsYb4lEeIXxHlYylXeF+eWgTRB/YGd/LxJpoWSQQ48ftFmL
 WTlEIypkkTJgri1WauSjeLaTDPWocpJuCA/8x2lZ/VrUV9ireiy2Jba9WmKZxGWT3tYV
 X//7ZskP9FB8Vg8q68Axf0WsNxQzFpc/5ZLcVbVF4PeO0pACd5KaM1kPK364Sfg9HT3n
 cehY8/32fDbNBVNwZhkW9AKZLGNMEHTLnnXnsocO13r5AWLSKm4wU4B3EYK4YHbnTLpy
 o3uw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=SDgmsuHE
Subject: [Intel-wired-lan] [PATCH net] ixgbe: allow to increase MTU to some
 extent with XDP enalbed
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
Cc: kerneljasonxing@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jason Xing <kernelxing@tencent.com>

I encountered one case where I cannot increase the MTU size with XDP
enabled if the server is equipped with IXGBE card, which happened on
thousands of servers. I noticed it was prohibited from 2017[1] and
added size checks[2] if allowed soon after the previous patch.

Interesting part goes like this:
1) Changing MTU directly from 1500 (default value) to 2000 doesn't
work because the driver finds out that 'new_frame_size >
ixgbe_rx_bufsz(ring)' in ixgbe_change_mtu() function.
2) However, if we change MTU to 1501 then change from 1501 to 2000, it
does work, because the driver sets __IXGBE_RX_3K_BUFFER when MTU size
is converted to 1501, which later size check policy allows.

The default MTU value for most servers is 1500 which cannot be adjusted
directly to the value larger than IXGBE_MAX_2K_FRAME_BUILD_SKB (1534 or
1536) if it loads XDP.

After I do a quick study on the manner of i40E driver allowing two kinds
of buffer size (one is 2048 while another is 3072) to support XDP mode in
i40e_max_xdp_frame_size(), I believe the default MTU size is possibly not
satisfied in XDP mode when IXGBE driver is in use, we sometimes need to
insert a new header, say, vxlan header. So setting the 3K-buffer flag
could solve the issue.

[1] commit 38b7e7f8ae82 ("ixgbe: Do not allow LRO or MTU change with XDP")
[2] commit fabf1bce103a ("ixgbe: Prevent unsupported configurations with
XDP")

Signed-off-by: Jason Xing <kernelxing@tencent.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index ab8370c413f3..dc016582f91e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -4313,6 +4313,9 @@ static void ixgbe_set_rx_buffer_len(struct ixgbe_adapter *adapter)
 		if (IXGBE_2K_TOO_SMALL_WITH_PADDING ||
 		    (max_frame > (ETH_FRAME_LEN + ETH_FCS_LEN)))
 			set_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);
+
+		if (ixgbe_enabled_xdp_adapter(adapter))
+			set_bit(__IXGBE_RX_3K_BUFFER, &rx_ring->state);
 #endif
 	}
 }
-- 
2.37.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
