Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3069504C7E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Apr 2022 08:14:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 213F461206;
	Mon, 18 Apr 2022 06:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VVDPi_c_bfp2; Mon, 18 Apr 2022 06:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D32460034;
	Mon, 18 Apr 2022 06:14:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C2A151BF318
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 06:14:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AD86B41DB6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 06:14:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D2eopZOELJig for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Apr 2022 06:14:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DE26541DB3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Apr 2022 06:14:36 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id y21so6732709wmi.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Apr 2022 23:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e8ZuwAsZvFhjWYjd8yTG5wsLv6buaB3HfTucRNG+UqI=;
 b=WBAxuBJojSU2AxQ868FqVcQ6bk55DcVrjS+gy3jAnt3nvDlRlbljqO97Jz3Cz5AMiT
 rA4ZZ5BibfwSetqgnPmUrzvxgW5Rr3ceJV5T4gk8DGbjt369zJGMLqsD8d7D8Sc2b1Wt
 fJPj/M94vOwbducPtV5E9Ih0H1Ei+Oy623kbixxJycErlhhEub46YERI5B0USCLjqV9p
 pvq4FJxxKKN4YNjvfDQwT6GLNuqnymE6X7+nDqcD2WjR/4u3vAx8degW1ZL9ouFlwHW+
 t24S0hCJL4SePnhvBYckJXIkD5weNDMB2sTTJwICx+uvdewNGWsguBuV5ZFlwtHGzKlc
 m02A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e8ZuwAsZvFhjWYjd8yTG5wsLv6buaB3HfTucRNG+UqI=;
 b=tgF7BzzvWVH4LfWZ9UTpygLvVPLugni5AeSQng23IWJEtwF6QzMyeTD6991sL2xEPx
 uusgsBNoYOWqsK57oVGEktSxjw9wPLwiFZJKL0Bl2VPPiId4tDe81iurI5fxp86hKKj/
 jLF+Q7ky79rAetftE3SPkfXL5Q7zNFA6In6vs4hrWsFBtI1VnivZLJWjjpsdNHQH81x+
 YtxwLPJ2PudgO0WisD4MjVZt2eXM4Z5DPTMHrh9huINqWCPt3po/IFA7jdDWQn64c1a7
 5qEuHZyZ6N1XdKZfUNZtGXkw14qDmKYXZZ9TAgYhiXxvjFphxrfSyv30CqQLKTDDchUw
 l/pw==
X-Gm-Message-State: AOAM530gpmk/o/m6xBHnCp5MRdkk5H+vf8wvjum252/MRgYbn8mSnRja
 gzc/cTPcvXacTq+uD/wDu3I=
X-Google-Smtp-Source: ABdhPJyPTRA13mBsIiG+RM0ugphkP3LSbXaCVQcb4zssDaNxL91RgVJA7llncwPOS67rRpAbsu7dxw==
X-Received: by 2002:a05:600c:5114:b0:38e:bd9c:9cb0 with SMTP id
 o20-20020a05600c511400b0038ebd9c9cb0mr13433157wms.153.1650262474907; 
 Sun, 17 Apr 2022 23:14:34 -0700 (PDT)
Received: from alaa-emad ([197.57.90.163]) by smtp.gmail.com with ESMTPSA id
 z17-20020adfec91000000b0020a98f5f8a7sm1654811wrn.6.2022.04.17.23.14.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Apr 2022 23:14:34 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: outreachy@lists.linux.dev
Date: Mon, 18 Apr 2022 08:14:30 +0200
Message-Id: <20220418061430.6605-1-eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.35.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v4] intel: igb: igb_ethtool.c: Convert
 kmap() to kmap_local_page()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, eng.alaamohamedsoliman.am@gmail.com,
 kuba@kernel.org, pabeni@redhat.com, ira.weiny@intel.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The use of kmap() is being deprecated in favor of kmap_local_page()
where it is feasible.

With kmap_local_page(), the mapping is per thread, CPU local and not
globally visible. Therefore igb_check_lbtest_frame() is a function
where the use of kmap_local_page() in place of kmap() is correctly
suited.

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in V2:
	fix kunmap_local path value to take address of the mapped page.
---
changes in V3:
	edit commit message to be clearer
---
changes in V4:
	edit the commit message
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 2a5782063f4c..c14fc871dd41 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -1798,14 +1798,14 @@ static int igb_check_lbtest_frame(struct igb_rx_buffer *rx_buffer,
 
 	frame_size >>= 1;
 
-	data = kmap(rx_buffer->page);
+	data = kmap_local_page(rx_buffer->page);
 
 	if (data[3] != 0xFF ||
 	    data[frame_size + 10] != 0xBE ||
 	    data[frame_size + 12] != 0xAF)
 		match = false;
 
-	kunmap(rx_buffer->page);
+	kunmap_local(data);
 
 	return match;
 }
-- 
2.35.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
