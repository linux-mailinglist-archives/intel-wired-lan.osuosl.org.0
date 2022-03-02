Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AD74CA556
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 13:57:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7551410C0;
	Wed,  2 Mar 2022 12:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hcPKrLoj5VgD; Wed,  2 Mar 2022 12:57:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C04A4109B;
	Wed,  2 Mar 2022 12:57:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4BD461BF35F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 12:57:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3973F8145D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 12:57:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 61vj9qm0UW_I for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 12:57:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F193C80B9A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 12:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1646225829;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4tvH7/UPfOujZY4vvMaOBTun4bBist9qqxPve17cRH0=;
 b=WvNecf8ej6vreYQ/fw2F6YOxusU/ISAaO83Ck5CiwY/eBRkdSbM53HIqiR2x9grsudy6J1
 eykc2O7Ao5SGQE36B4He5oa/m7kRwNaOUYSUFKxB7BiqLDlGruZgEoFuxOtkz/24tX7EJk
 R0I7nuSqjrkui7ReNZxCZfUPficn+fs=
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-455-L6O8ftD0MrWCuEigV8JdLg-1; Wed, 02 Mar 2022 07:57:08 -0500
X-MC-Unique: L6O8ftD0MrWCuEigV8JdLg-1
Received: by mail-ot1-f70.google.com with SMTP id
 71-20020a9d034d000000b005af37922de5so1219866otv.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 02 Mar 2022 04:57:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4tvH7/UPfOujZY4vvMaOBTun4bBist9qqxPve17cRH0=;
 b=owHtdfWHvHakFB5qFoaDLN2sqLxIzD1Q7KkKe1hGE5CcAvou5IqbXjLLeecuFrfmkC
 bmMNGXrCDSTDbpoEYfiTTPX6kdOztu6Sj9I1fuvsJLI/1wKXhi+1OtDgcDOnuY3XI0/Y
 3y05x8PQ5bpOw0j05XYjAFyRcjl1jt1OIJJGa1tdvfA4D4fiSFWiFsCAYEgTPTts/kBx
 jzqzP/bjSgqqyVwmU1mBIWYnTGt4DuZQSA6yOaP8MHhizt8ZCT0gCzmRiTO1GB5+/rnp
 Hxo8JEHqU3BucNUkr+eglVl5hMd4RO7Iw5Ke4T3fm7lJ98OZDHb0xZx+hYsiM5k9WcLs
 86XQ==
X-Gm-Message-State: AOAM532t+bwIAGlj655kG8qDZVDXIhVCPwX4Pfbf1IhLmkyFgVlDP46a
 nZ0cKgYkyAn+a2x8CDCE0zbFXt6E6aoWGmskX9vaihATNCGhYkvfHxD+W4AP6ggQsCoEIST6wV4
 4RFrNN+sjOXND7ez3kH4bn9h4cNuiIg==
X-Received: by 2002:a05:6870:238c:b0:d6:f796:c98e with SMTP id
 e12-20020a056870238c00b000d6f796c98emr7520504oap.82.1646225827409; 
 Wed, 02 Mar 2022 04:57:07 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx+HJAWOIaiYoffWdK1JHVICQZFHgy9ZPQ2SGyYS6IGnckQm6gVc5ccom6k+N2+elbCInqJoA==
X-Received: by 2002:a05:6870:238c:b0:d6:f796:c98e with SMTP id
 e12-20020a056870238c00b000d6f796c98emr7520491oap.82.1646225827239; 
 Wed, 02 Mar 2022 04:57:07 -0800 (PST)
Received: from localhost.localdomain.com (024-205-208-113.res.spectrum.com.
 [24.205.208.113]) by smtp.gmail.com with ESMTPSA id
 e199-20020a4a55d0000000b0031ca56292bbsm2816774oob.46.2022.03.02.04.57.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 04:57:06 -0800 (PST)
From: trix@redhat.com
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, kuba@kernel.org
Date: Wed,  2 Mar 2022 04:57:02 -0800
Message-Id: <20220302125702.358999-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=trix@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [PATCH] i40e: little endian only valid checksums
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Tom Rix <trix@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Tom Rix <trix@redhat.com>

The calculation of the checksum can fail.
So move converting the checksum to little endian
to inside the return status check.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/net/ethernet/intel/i40e/i40e_nvm.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index fe6dca846028f..3a38bf8bcde7e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -682,10 +682,11 @@ i40e_status i40e_update_nvm_checksum(struct i40e_hw *hw)
 	__le16 le_sum;
 
 	ret_code = i40e_calc_nvm_checksum(hw, &checksum);
-	le_sum = cpu_to_le16(checksum);
-	if (!ret_code)
+	if (!ret_code) {
+		le_sum = cpu_to_le16(checksum);
 		ret_code = i40e_write_nvm_aq(hw, 0x00, I40E_SR_SW_CHECKSUM_WORD,
 					     1, &le_sum, true);
+	}
 
 	return ret_code;
 }
-- 
2.26.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
