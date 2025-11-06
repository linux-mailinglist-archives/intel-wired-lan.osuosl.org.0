Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE58C3AB98
	for <lists+intel-wired-lan@lfdr.de>; Thu, 06 Nov 2025 12:56:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A242614CA;
	Thu,  6 Nov 2025 11:56:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l80zBbPYr72p; Thu,  6 Nov 2025 11:56:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03679614CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762430182;
	bh=uNpcXHGc/4OOByDk3Xi+rklLjzHFy8Vk5vFGZ7I57lE=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Hd/a27Hq5X8Bgm5jY+pTdBLmFxG7s5m/hnKgqkpZ9lAgNwvsRO7qoY7u3OyH92gX+
	 dyMtiLP6NBU/pkFPVPWCNwSfZeZ+xTudGqczuKwTfnOpz1aog0R98pkZ8qirbMhfTz
	 x0vxRr5pNNcPnmxefxM5blte+uK4gaokLQOV1F09TtJzfMeFDVyCns/suCO834ronr
	 u+cw51mWb4AjFtJDRcTdQ2CWb2GVUziWqmCplAwgr86Zsp/2wswWpnDN7zLVib5WtN
	 OW9UF+ifqXn9xz5eX6W/5/VMIoFPjLGyWEJ2gTZaLQw+Ayiy4xVkpNhCA9taYMxXQ+
	 H64I5LVcX/gTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03679614CE;
	Thu,  6 Nov 2025 11:56:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D75821CD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 11:56:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BDD3D614C9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 11:56:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j5gKrg9-IUBP for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Nov 2025 11:56:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::433; helo=mail-pf1-x433.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EB396606F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB396606F7
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB396606F7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Nov 2025 11:56:19 +0000 (UTC)
Received: by mail-pf1-x433.google.com with SMTP id
 d2e1a72fcca58-782e93932ffso761022b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 06 Nov 2025 03:56:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762430179; x=1763034979;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uNpcXHGc/4OOByDk3Xi+rklLjzHFy8Vk5vFGZ7I57lE=;
 b=s84BSZiCY9EDgOKIvZCqVUdl7kbKNTSfXRPS+HskoWtRUb518W1eP1xEqJ37mt/3zW
 POxFrdDCEBGamigQo0uqy8Xw8Dq6I/4sgrv4XZJkOoh/cJntdDoOg8RMZa2A/Cn2Ttr2
 kCJzDDvCBsQOrXiLLpsF2cotD/Gtmk1gg7yCye/qXTjmVROJJ/1jzEHk4MCueGt4YX1/
 1DljMXMh09v4R7RUu724P9VhLKqI1ZaeknHzdH9HNRYLqXvsKObKYwe1wVZmfPmLJpGp
 +xFSU8T2dKsyuyscsbLMnu/cszLA9v3Qgp8cF77bZoesfi1diioGfqah6qLl+6/beU5p
 imOw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVFNBLv8OEhPXVnlwtVV0SvtJJkNR0DVMBl948lFEBLRVP6y9IE8CRHoEWqC+hJ0Nh+93/Tx7h7h6uqM4jFQwQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxqt+gPQNDD9NyhCYKAZa8QAuQkelc9KiwpFVV9zQLooY5CTTHH
 +JodtOclfcBuqdZk7PXugasyEk8LhSFI+hbFnODkYt/w9iTw7JDVdj9K
X-Gm-Gg: ASbGncv8MQUN7YcVkDYS0LfZMxJlLgL3ea1hwST6n/+d04+kgpyLzJIBcqbzCaZFxCM
 iyzf9kwI3Jxv++ktgPxL37coUcYdHyN3e/Uqqxo5pAFB4QZdMedLwvITvnd1KmjFvDIv9L4Lf+Q
 sRTxuPlHOEPCcQt0AXGTPbhPBmFAyfnZAibLK1K0E9DwL91SONgelnQtR33XznoYSD+EK2sYsLb
 tIiQOQABj84sAjmEc7o74HoSBnDnWTqhPwf7jFVCPPTgei8gfoN8BoA7xlV15ON7bsNu7aW2W1Q
 da8kVrILEnZ6sc3mPF6TFIrSPYRXiVZQpoo7kOv8XFJ9Za8ZBrBcEN4FT2TRamvFPlcIDgByvO4
 SsLAskxyZEJWh4y0U7MCFkDGlx0S65eJ9kmHpaY9bnDEraXiQ5l6cPyOE7vbUjECA3Ilj6g1GbP
 nvjKKL7xpsxEY=
X-Google-Smtp-Source: AGHT+IFZTfSSmOqsnzyenxwbnVCwSP1cwq60iDyw7m55VKi4EtHZ+78miYEWY5PRHYIS5Aaap/hNxQ==
X-Received: by 2002:a05:6a00:230b:b0:7a2:81fe:b742 with SMTP id
 d2e1a72fcca58-7ae1d63f297mr9571953b3a.12.1762430179016; 
 Thu, 06 Nov 2025 03:56:19 -0800 (PST)
Received: from aheev.home ([2401:4900:88f4:f6c4:5041:b658:601d:5d75])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7af7c4115a9sm2648580b3a.0.2025.11.06.03.56.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Nov 2025 03:56:18 -0800 (PST)
From: Ally Heev <allyheev@gmail.com>
Date: Thu, 06 Nov 2025 17:25:48 +0530
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-aheev-uninitialized-free-attr-net-ethernet-v3-1-ef2220f4f476@gmail.com>
X-B4-Tracking: v=1; b=H4sIAMOMDGkC/52NsQ6CMBRFf4V09pkWaCFO/odxaOkDXgLFlNqoh
 H+3MLHqds8dzlnYjJ5wZpdsYR4jzTS5BMUpY02vXYdANjHLeS6F4BJ0jxjh6chRID3QBy20HhF
 0CB4cBsDQo99GZQVXWGpTtBVLwofHll577HZP3NMcJv/e21Fs71+ZKEBAq1DXpTG2kvzajZqGc
 zONbMvE/KhWP6nzpOZlbTVvpFVGHdXrun4B25jupz8BAAA=
X-Change-ID: 20251105-aheev-uninitialized-free-attr-net-ethernet-7d106e4ab3f7
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 "K. Y. Srinivasan" <kys@microsoft.com>, 
 Haiyang Zhang <haiyangz@microsoft.com>, Wei Liu <wei.liu@kernel.org>, 
 Dexuan Cui <decui@microsoft.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hyperv@vger.kernel.org, 
 Dan Carpenter <dan.carpenter@linaro.org>, Ally Heev <allyheev@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3128; i=allyheev@gmail.com;
 h=from:subject:message-id; bh=F5ah8MsnK3Z9znouBMKy+zHLSoJBwjNa27W+pmH6JFY=;
 b=owGbwMvMwCU2zXbRFfvr1TKMp9WSGDJ5ei7Ny4nVWfJeUGdH1rezCw5x/ljgOH9Tku3f6Bfbb
 3n5zI/b0lHKwiDGxSArpsjCKCrlp7dJakLc4aRvMHNYmUCGMHBxCsBErjxk+Gdsc+VJcu2UZ76Z
 Mq++hx007zi/87TXp1fBFSw28svXBskzMuz7vfxP6VEnIc2bpmJMT+PsuSRftbJyfHZ00HG+I+d
 Szg8A
X-Developer-Key: i=allyheev@gmail.com; a=openpgp;
 fpr=01151A4E2EB21A905EC362F6963DA2D43FD77B1C
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762430179; x=1763034979; darn=lists.osuosl.org;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:from:to:cc:subject:date:message-id:reply-to;
 bh=uNpcXHGc/4OOByDk3Xi+rklLjzHFy8Vk5vFGZ7I57lE=;
 b=QKeBCCs3jqws/HXs1TLlkt1ka625ps57/DOMrNXp6lbpnwIOvgyE0cc6mWq7JY0N8R
 jcUaoYTofinOvHwV6wj7rSeD6sFbokt5lJkOMyJOt7ScJx0NRTwfpyP71Vpqmjy2sZ0Y
 Tyw4r20wLBb8SzKiz6DgLYcX1LXotBvCNPrMAdZLUPjG4L6k9lcMGH/ibNInZSJfoc6x
 fN1V/JF88fAEDxAMjew1ucPWWVM7dyyys9OTBWu+AMvrKqg31MTEZyw6D4GL0EN8Jk6w
 FDZcN9jrtqbtmjvqcLcZtzkt5I8d1kcKDkn86Bty6KgnXPO/ZzYvHdkbVIUS3LDJFDc9
 q3mA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=QKeBCCs3
Subject: [Intel-wired-lan] [PATCH v3] net: ethernet: fix uninitialized
 pointers with free attribute
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
behavior as the memory assigned randomly to the pointer is freed
automatically when the pointer goes out of scope.

It is better to initialize and assign pointers with `__free`
attribute in one statement to ensure proper scope-based cleanup.

Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/all/aPiG_F5EBQUjZqsl@stanley.mountain/
Signed-off-by: Ally Heev <allyheev@gmail.com>
---
Changes in v3:
- fixed style issues
- Link to v2: https://lore.kernel.org/r/20251106-aheev-uninitialized-free-attr-net-ethernet-v2-1-048da0c5d6b6@gmail.com

Changes in v2:
- fixed non-pointer initialization to NULL
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

