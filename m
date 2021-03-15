Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F1D33B6EB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Mar 2021 15:00:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 662CA483DE;
	Mon, 15 Mar 2021 14:00:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4dzgeMFKvoXr; Mon, 15 Mar 2021 14:00:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3335147B6F;
	Mon, 15 Mar 2021 14:00:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C2FF91BF363
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 01:49:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ADB63605A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 01:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZrY5lrw9Sic4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Mar 2021 01:49:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D700605A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Mar 2021 01:49:16 +0000 (UTC)
Received: by mail-qt1-x835.google.com with SMTP id l13so8139516qtu.9
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 Mar 2021 18:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v5C1FzAc3n+Q+DivoMRN4HMo2xYIzd9PmibOkkmSFMM=;
 b=qfxYsDiUCXCn2YMPNV3ILEn4qTBRXy3TmHhuQxOVq3khLZh8Hfbw0sJ2nXZVN8LX68
 2MXIrvXxo2B6ijIlTTV4biVg8NH4ijLrAntmxqx1ucJr9xY2JWmpxs1FGUyvz+zrnjtm
 siivPv+cM8HkBDT/QFdO5LmJZTxlC/lp75OsM55BdxC9VtjVdoe8JnGfK3+9poIHQ3WG
 MsvbyAMsH6rskCJgOjqHZRn0UjMKegWJUOksBBO78AGVR/iWY80Xjwzi2btTRy79NlTh
 oq04YuxmpgmNvM4q+uo3GBlE0Zt0jVky6wTu9S6fz0hAB8WrA5+wz5ktxUVnxWIZWBoO
 zbpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v5C1FzAc3n+Q+DivoMRN4HMo2xYIzd9PmibOkkmSFMM=;
 b=Bdft9UG/ovUuIC9QPltDGrT73piuxCBhm7VOzJ7L2fH1zmapBnCyop1xL6CJm16vk9
 hkAZOCn0a639blRIumwu2JIYZTuUuY575l2DilUDqzpqTfFi4KwR/bEWLvJZ2AjlWM1i
 TVV9/9npO1nlV5jKRYC/+IuK4uEXDZFakinjuh14o1AJs0cmZT81VFHB5ccil4XZ8ZSs
 6fChUMyAHwgmWLIXF3yRhaUUqrvfrqhwcLOa7ZvPBbO2BXnIOn6X/fCq4ai6qDoHISZt
 KvOH7uBmcH2wXdBenZooW/fhAlw/FCKSPKXleJvuV2L1iXGXqgvytUpBiW53FxH/+oBX
 Cllw==
X-Gm-Message-State: AOAM533pExo9yEqfSZqo/ZiKsT3JVtzQb6GmA7nWXnC7dYfYi1c0uf+O
 HvFBWdQtnmaYH92aGhflDJY=
X-Google-Smtp-Source: ABdhPJxauSh2np1+DiEgowjAKvrGN9eiA811QseMjJ28g+CWSg10+3Cl+N0LksmkC6ssrKOS/DKFsw==
X-Received: by 2002:ac8:4b6d:: with SMTP id g13mr21011158qts.369.1615772954902; 
 Sun, 14 Mar 2021 18:49:14 -0700 (PDT)
Received: from localhost.localdomain ([37.19.198.69])
 by smtp.gmail.com with ESMTPSA id z6sm9944662qto.70.2021.03.14.18.49.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Mar 2021 18:49:14 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org, ast@kernel.org, daniel@iogearbox.net,
 hawk@kernel.org, john.fastabend@gmail.com, andrii@kernel.org, kafai@fb.com,
 songliubraving@fb.com, yhs@fb.com, kpsingh@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org
Date: Mon, 15 Mar 2021 07:18:47 +0530
Message-Id: <20210315014847.1021209-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 15 Mar 2021 14:00:10 +0000
Subject: [Intel-wired-lan] [PATCH] net: ethernet: intel: igb: Typo fix in
 the file igb_main.c
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
Cc: rdunlap@infradead.org, Bhaskar Chowdhury <unixbhaskar@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


s/structue/structure/


Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 03f78fdb0dcd..afc8ab9046a5 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -3115,7 +3115,7 @@ static s32 igb_init_i2c(struct igb_adapter *adapter)
 		return 0;

 	/* Initialize the i2c bus which is controlled by the registers.
-	 * This bus will use the i2c_algo_bit structue that implements
+	 * This bus will use the i2c_algo_bit structure that implements
 	 * the protocol through toggling of the 4 bits in the register.
 	 */
 	adapter->i2c_adap.owner = THIS_MODULE;
--
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
