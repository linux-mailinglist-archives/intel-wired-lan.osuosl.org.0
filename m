Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBE0C3A15B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 06 Nov 2025 11:08:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 01F6E61486;
	Thu,  6 Nov 2025 10:08:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1bLDzNEU5TBA; Thu,  6 Nov 2025 10:08:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 499076148B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762423737;
	bh=5B/ZONU+mx/MPUhZ8D2RqXDgUbTh84Ll8Fc5jTmwlA0=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=crxad48hXVFVETuhTwNjSSnFC7dre0yLjsYJfDdD7k9bk0CrzMH0cQenPKjhl9B+k
	 nMGduAEuXOeicetbMH7dnkrRB+8u+pHoBEl1oMfZM0wUux/Di8zg0T2wCHIOO4vgWb
	 JCnGGrLdSwHGAJC+iJty6DQ2l8MxcyyljQj8iB8urjpF+ZFZdrDLDjO1X+Os4Ab9O7
	 JoCQSQXe0BJL8qdCFBwi1z6Mn1Kx8r5pz7z5PJ1ps4KUDmoT6Yj8C9iqePU/I1g271
	 pUVpWkqGVX3XNw9NO94jvdzTkSA3Nhrm92SEo+d4Muew+Sb3F368SmQIy86gKBC9CB
	 ZWVM+/1mKjNIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 499076148B;
	Thu,  6 Nov 2025 10:08:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 92D1A1CD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 10:08:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 901EE41241
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 10:08:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HgFI0s9U4Y_I for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Nov 2025 10:08:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::530; helo=mail-pg1-x530.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8743F40FC9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8743F40FC9
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com
 [IPv6:2607:f8b0:4864:20::530])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8743F40FC9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 10:08:54 +0000 (UTC)
Received: by mail-pg1-x530.google.com with SMTP id
 41be03b00d2f7-b4755f37c3eso590239a12.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Nov 2025 02:08:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762423733; x=1763028533;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5B/ZONU+mx/MPUhZ8D2RqXDgUbTh84Ll8Fc5jTmwlA0=;
 b=wfMORQazxx0INb06gghq/ZTnIIuqWFbaHEWR5Q1HOaKJ1kSo2tka3Yz3xkgBLXHRlz
 pC9RUi6GOpM5P5mqWbX6W9N66/O+XY/EP8qUNH83VeTDDQ1UF4+eQU/ppYCSrZScJt5f
 T42idzhoBk/uSnLF9b22COzS1oFsKy94NxIvuwpWKrXGmJWG0EPzq9U4+AOFblJvHgIq
 K/PMRdnFgTSvCZ8VA53aT8XJYVgpu9HXlq6K3kifkQ0YGxkEw7hHv2ow7ZuSqJugwp3j
 85uQnrGekx/6jEhNUpJ+n9qYwNFomZ/GD9g8qjsP6gbINkIf++9LbM6v+N2yC7VtKOCG
 gaRA==
X-Gm-Message-State: AOJu0YxnUycW4ydzVc5zR+Xo47QTprgFqkyP+d2rSE9Ww8p/GF9zHdj0
 hZVo/N0lV4ZB68n9TX4lDdRPPdCc0KrXpN5CTsAOeCtcKfO/0/vqQ8qWJrK/L+Z4
X-Gm-Gg: ASbGncu7T6GTcdUqp9bCA2yrzKLrvItRROfTtGCjKwGTrLh6H/v8BsPAEr9foS5EOAQ
 gHloOO0wZNTyl8DvexhJOy1FL6XcRndSpoMhQUHwsWICbDu+rSwPfQm2/2AjVJfw5X9LeYyDe8B
 MyyQPCkJ0qseoSC4f0H4nd7fRxUN75F7jRKU03WvPV3+w0HjLt9qUD43y00KTWjFSA7V+QHHAVG
 3tMH+waHffXQIJgXoTGIiDUW9z8wJGfs8NIENlObEpZ0BQmSYVV2IkcWhG3WqeoC+Nzeqc5N/xX
 2wtsiwfaW09cbvMhz1rC95n4gYepXpcvgLgPWmKHNTwcbgPFH/MSjDGAELZSfJq1q8nB8LMprFv
 lRqXALZ8rnlhSBSVUyI2NaIEWnYUdDTR20Z2KjGW0hpP9hPBHH3NwbF+ry9Pui25YKiZIrIxMYB
 m7
X-Google-Smtp-Source: AGHT+IGGknNbfaJf1wlwBpbXS9DgfCxm28G8CeSW3otZfXLcPcwJFPQBOKlOcIpLEk4FHszmJ38k6Q==
X-Received: by 2002:a05:6a20:1b10:b0:343:64dc:8d3 with SMTP id
 adf61e73a8af0-34f866ffce8mr6522570637.31.1762423733294; 
 Thu, 06 Nov 2025 02:08:53 -0800 (PST)
Received: from aheev.home ([2401:4900:88f4:f6c4:5041:b658:601d:5d75])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-ba902207232sm1855872a12.32.2025.11.06.02.08.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Nov 2025 02:08:52 -0800 (PST)
From: Ally Heev <allyheev@gmail.com>
Date: Thu, 06 Nov 2025 15:38:41 +0530
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-aheev-uninitialized-free-attr-net-ethernet-v2-1-048da0c5d6b6@gmail.com>
X-B4-Tracking: v=1; b=H4sIAKhzDGkC/52NTQ6CMBBGr0K6dkyL/BhX3sOwKHRKJ4FiprVRC
 Xe3cAR33/sW760iIBMGcStWwZgo0OIzlKdCDE77EYFMZlHKslZK1qAdYoKXJ0+R9ERfNGAZEXS
 MDB4jYHTI+2iNkg1Wur/YVmThk9HS+4g9usyOQlz4c7ST2t+/MkmBAtugvlZ9b9pa3sdZ03Qel
 ll027b9AKkmv87kAAAA
X-Change-ID: 20251105-aheev-uninitialized-free-attr-net-ethernet-7d106e4ab3f7
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 "K. Y. Srinivasan" <kys@microsoft.com>, 
 Haiyang Zhang <haiyangz@microsoft.com>, Wei Liu <wei.liu@kernel.org>, 
 Dexuan Cui <decui@microsoft.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hyperv@vger.kernel.org, 
 Dan Carpenter <dan.carpenter@linaro.org>, Ally Heev <allyheev@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3029; i=allyheev@gmail.com;
 h=from:subject:message-id; bh=1DqFSj/S5FdRM8xI1vnmMW27R5cKr38U/BL7DRT8f0g=;
 b=owGbwMvMwCU2zXbRFfvr1TKMp9WSGDJ5ite1TzulbSKvft6+c1daVuL3VXO3XN4S+kf7pZ/nF
 mfjf2sdOkpZGMS4GGTFFFkYRaX89DZJTYg7nPQNZg4rE8gQBi5OAZjIVQmG/45tCdELukNbauaV
 zUr0cPrRop6YYxkY0VLG7HF+isKty4wM7Ynayxg0fV5dMYjz6nz+fpVBVJK8j5Xa1BURM+5Nlmp
 jBQA=
X-Developer-Key: i=allyheev@gmail.com; a=openpgp;
 fpr=01151A4E2EB21A905EC362F6963DA2D43FD77B1C
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762423733; x=1763028533; darn=lists.osuosl.org;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:from:to:cc:subject:date:message-id:reply-to;
 bh=5B/ZONU+mx/MPUhZ8D2RqXDgUbTh84Ll8Fc5jTmwlA0=;
 b=VMhl4DB0xu3KXENs/vfpevUgHJ1SnZveJZXppbwDBUF102ExIg6uk08Hd0vwV5JZaX
 XW38vXF10a6K8mHL+lIo4F1PRBHB0Gi2i3zrbBurfB2PcFdPihGrG5ahcmUjySEq1OUh
 mbLpj/h6K2TSGwdupetJC5jKkr2E3JZwZOBBlGUwx+FtCO7xYxAmnp2LBPw4w+6tlBMh
 0l1wFKW033pAJ132F7Kh3SEw7aEu92NcsIkmA+PwJ06WtOLgR55cz7uQOJohN602Hxdu
 YkQUCi9iUu+NKqkAkGU/zPt6snzWlvGS25XRlqgoYCHl33I+od13xplw8Zt1rvwQFHVw
 xPeQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=VMhl4DB0
Subject: [Intel-wired-lan] [PATCH v2] net: ethernet: fix uninitialized
 pointers with free attr
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

Uninitialized pointers with `__free` attribute can cause undefined
behaviour as the memory assigned(randomly) to the pointer is freed
automatically when the pointer goes out of scope

net/ethernet doesn't have any bugs related to this as of now,
but it is better to initialize and assign pointers with `__free` attr
in one statement to ensure proper scope-based cleanup

Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/all/aPiG_F5EBQUjZqsl@stanley.mountain/
Signed-off-by: Ally Heev <allyheev@gmail.com>
---
Changes in v2:
- fixed non pointer initialization to NULL
- NOTE: drop v1
- Link to v1: https://lore.kernel.org/r/20251105-aheev-uninitialized-free-attr-net-ethernet-v1-1-f6ea84bbd750@gmail.com
---
 drivers/net/ethernet/intel/ice/ice_flow.c       | 5 +++--
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 5 +++--
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index 6d5c939dc8a515c252cd2b77d155b69fa264ee92..3590dacf3ee57879b3809d715e40bb290e40c4aa 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -1573,12 +1573,13 @@ ice_flow_set_parser_prof(struct ice_hw *hw, u16 dest_vsi, u16 fdir_vsi,
 			 struct ice_parser_profile *prof, enum ice_block blk)
 {
 	u64 id = find_first_bit(prof->ptypes, ICE_FLOW_PTYPE_MAX);
-	struct ice_flow_prof_params *params __free(kfree);
 	u8 fv_words = hw->blk[blk].es.fvw;
 	int status;
 	int i, idx;
 
-	params = kzalloc(sizeof(*params), GFP_KERNEL);
+	struct ice_flow_prof_params *params __free(kfree) =
+		kzalloc(sizeof(*params), GFP_KERNEL);
+
 	if (!params)
 		return -ENOMEM;
 
diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
index cbb5fa30f5a0ec778c1ee30470da3ca21cc1af24..368138715cd55cd1dadc686931cdda51c7a5130d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
@@ -1012,7 +1012,6 @@ static int idpf_send_get_caps_msg(struct idpf_adapter *adapter)
  */
 static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapter)
 {
-	struct virtchnl2_get_lan_memory_regions *rcvd_regions __free(kfree);
 	struct idpf_vc_xn_params xn_params = {
 		.vc_op = VIRTCHNL2_OP_GET_LAN_MEMORY_REGIONS,
 		.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN,
@@ -1023,7 +1022,9 @@ static int idpf_send_get_lan_memory_regions(struct idpf_adapter *adapter)
 	ssize_t reply_sz;
 	int err = 0;
 
-	rcvd_regions = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
+	struct virtchnl2_get_lan_memory_regions *rcvd_regions __free(kfree) =
+		kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
+
 	if (!rcvd_regions)
 		return -ENOMEM;
 

---
base-commit: c9cfc122f03711a5124b4aafab3211cf4d35a2ac
change-id: 20251105-aheev-uninitialized-free-attr-net-ethernet-7d106e4ab3f7

Best regards,
-- 
Ally Heev <allyheev@gmail.com>

