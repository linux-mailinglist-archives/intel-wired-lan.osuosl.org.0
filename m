Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A5FC36B99
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 17:36:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7A9861065;
	Wed,  5 Nov 2025 16:36:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RL5i5K3lkVwi; Wed,  5 Nov 2025 16:36:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A3D961279
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762360578;
	bh=4cPUaZ1vu8lY7gSxHHPShFsBPH7l58KtQzSSmUne/Kw=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=xYhbdKuMRr2ljXmuQNBO7088uHzEe+Noz699iJ6R4bqqBRcvfKFs1FXoVNWvQMazb
	 Nuj/SdndDXUGFB/nqvoRlweUASy/G/Aj5wCzuGBqE3dp3rDq5ptjtrTYRtlirqreaQ
	 +ArWO/KmOkqCvLi+rO1tD/7SVE20zQKODvH2ZTpQGkcpEEEfiRFrOIrdfv8lOv1Ctv
	 4RWc2Xca9zSEJZNNwR3CFg+imeJyraPoN+BE60kPCkOIcIlO/1TxEcB7quhRmaTXuz
	 uD+QhplBlqeHeE4FP4XBls8WUtCeleT3s/IHrCpYyTJDoZgzDpP/vHC6RI3IHP+Xkr
	 QWVKnbba9eTug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A3D961279;
	Wed,  5 Nov 2025 16:36:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 74038222
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 11:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5CE7A40F02
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 11:17:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jG6zUe1pz7lR for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 11:17:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::431; helo=mail-pf1-x431.google.com;
 envelope-from=allyheev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9378D40F01
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9378D40F01
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9378D40F01
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 11:17:38 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id
 d2e1a72fcca58-7aa9be9f03aso2901300b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Nov 2025 03:17:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762341458; x=1762946258;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4cPUaZ1vu8lY7gSxHHPShFsBPH7l58KtQzSSmUne/Kw=;
 b=dl1z61EfOuiYym81D+Zi+zoddPMreC/AgJJXEyBhQAUcEyJVI199jjySOgJ8Be/ajX
 Hg8g9fnDLISGperV+m9I0vMk4mlBKf+xPX/FyVIh3Wkkx+RNmgCQgEaj0MgcBtv38fG4
 twf9W48KpvOJMJ/ouWEzIKfRTmZmc8s3lPA3QaYPXSZfyq1n0KMq/IXt9FZsbgN3aR/l
 TpwpFExa+C+2dvKQdIiR2REIRrIZCnzLiZR2Z0asl2F033ACVB9L8w3cB1usH6OXUyBw
 TKrtvgnhNmZoV6lmm4lvGeDfcWO/Tejfq+hEewfrHg/nQzGo4vt42bjbmTO6bm+fp2X9
 kYaQ==
X-Gm-Message-State: AOJu0Ywgzb/Jg5SCKveVsUXSkxRyH6ED/5F4xHidPke1SxigSNvENVvv
 zZ1wkZbbAwTUYszmZAhZGhNMULF58Plk02pGm3olEH1he8jxBEDf6rvl
X-Gm-Gg: ASbGnctlZFClLFBnhKx7DMHhJtVZT0TDyOBXyTK96w5vPTt5Gi3a4f+VgYsik9IovPl
 YBGl79F8lRSA66m5txldt6KI6jUDF7M6Dx5P6ompWEHQglb8949t7LKyJf+rGrdHgX4A/MnYy+B
 ZrF/venOM58qh1W+zwYMwQf/fqMCyWSFFhzwaxExlEGqqVRp8EgEvREd641XfaM1WdUFFvzVe1b
 M8lus3fhDJdZiujl6YBOQXeGkf4ltGLmy8ioWElh28KNcLKcKe23y55iNUN/URJbkL3jakx9h7w
 DFKX+9u6FL47hbpXEcu7JmFNaKNvRCtcoz8uTGviAkQEWGfC1YbfN1d4PAX/Y+GW6uL2mqbWq7O
 sjCq77MBlRQxlL2Bnr8+tpUk1dhAOKd5bTFWjxihzx6XBUCt6qswNxHutNPV6Y2n5FFgRZC3m0l
 bb
X-Google-Smtp-Source: AGHT+IFZaWbZGtAjGdCfp4O+yDRRSOyspGYsQrG3GxUOnvH5XrXZUNFKqmpRaeacRw4JF67zTIEhLQ==
X-Received: by 2002:a05:6a20:3d96:b0:34e:e0ba:7bf with SMTP id
 adf61e73a8af0-34f839e0a8cmr3972462637.1.1762341457709; 
 Wed, 05 Nov 2025 03:17:37 -0800 (PST)
Received: from aheev.home ([2401:4900:88f4:f6c4:54cc:cfa8:7cce:97b5])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7acd586cec1sm5914971b3a.38.2025.11.05.03.17.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Nov 2025 03:17:37 -0800 (PST)
From: Ally Heev <allyheev@gmail.com>
Date: Wed, 05 Nov 2025 16:47:21 +0530
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251105-aheev-uninitialized-free-attr-net-ethernet-v1-1-f6ea84bbd750@gmail.com>
X-B4-Tracking: v=1; b=H4sIAEAyC2kC/x2NwQrCMBAFf6Xs2YWktRb8FfGQmhezIKts0iKW/
 rvR28xlZqMCExQ6dxsZViny1Cb+0NEtB72DJTan3vWj927kkIGVFxWVKuEhH0ROBnCo1VhRGTX
 DfjBF7044hnlIE7Xgy5Dk/Z9drvv+BeWgZBJ8AAAA
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3554; i=allyheev@gmail.com;
 h=from:subject:message-id; bh=K0CJ52aXaW30yOkXOm79Sjwlq8KF0ufVGkRrUk+tqGg=;
 b=owGbwMvMwCU2zXbRFfvr1TKMp9WSGDK5jbzeLrarrTJbv8jhoV1Uz+lgBfPeJ9Lhc15/n1e81
 zz/wcWWjhIWBjEuBlkxRRZGUSk/vU1SE+IOJ32DmcPKBDKEgYtTACayso7hf5rCe93pl8x+tb/O
 miN6XWDtImevtV8Ef7QoJU5fuvajwGmGrxJvLt9rqLFNFHtgXvzgCk/7goaFaTxWh7LW7v37+gc
 HHwA=
X-Developer-Key: i=allyheev@gmail.com; a=openpgp;
 fpr=01151A4E2EB21A905EC362F6963DA2D43FD77B1C
X-Mailman-Approved-At: Wed, 05 Nov 2025 16:36:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1762341458; x=1762946258; darn=lists.osuosl.org;
 h=cc:to:message-id:content-transfer-encoding:mime-version:subject
 :date:from:from:to:cc:subject:date:message-id:reply-to;
 bh=4cPUaZ1vu8lY7gSxHHPShFsBPH7l58KtQzSSmUne/Kw=;
 b=Rb7yXiRq09OZKvnYQB/O2PlrQb669/rhTt1KURIPoNiy7x9sadUdrcNuEFDWPthuH1
 3MCabQHUtJq/E+XsWXh6lcAyVnEmmK5j02HoAKg+0/JC4dFRCNRTktofK4h8IKvLKHnP
 aP/xqs+/lEhCbLu4jRaF6Q50WlvWtqJisYNGCHOTV41RuyAZSd5MTdfiCHuXbJqOBWEz
 D+lXNvaa/XsrQSOPTBAw347o8zZhufjOEFQaybaDye9Z+NYXYTxfMJuOFeVJUqKHLsTA
 YB+QoqM9JmjevJcobVcTc844R94EpyV5JKG9ASnSrreS46Zk120Wgdqx6fO9TfWbZkv5
 vEsQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Rb7yXiRq
Subject: [Intel-wired-lan] [PATCH] net: ethernet: fix uninitialized pointers
 with free attr
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
 drivers/net/ethernet/intel/ice/ice_flow.c       | 5 +++--
 drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 5 +++--
 drivers/net/ethernet/microsoft/mana/gdma_main.c | 2 +-
 3 files changed, 7 insertions(+), 5 deletions(-)

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
 
diff --git a/drivers/net/ethernet/microsoft/mana/gdma_main.c b/drivers/net/ethernet/microsoft/mana/gdma_main.c
index 43f034e180c41a595ff570b886569685a56f9fee..8dcba7ee36130d94ba3436c99a5cd5f792a2962e 100644
--- a/drivers/net/ethernet/microsoft/mana/gdma_main.c
+++ b/drivers/net/ethernet/microsoft/mana/gdma_main.c
@@ -1505,7 +1505,7 @@ static int irq_setup(unsigned int *irqs, unsigned int len, int node,
 		     bool skip_first_cpu)
 {
 	const struct cpumask *next, *prev = cpu_none_mask;
-	cpumask_var_t cpus __free(free_cpumask_var);
+	cpumask_var_t cpus __free(free_cpumask_var) = NULL;
 	int cpu, weight;
 
 	if (!alloc_cpumask_var(&cpus, GFP_KERNEL))

---
base-commit: c9cfc122f03711a5124b4aafab3211cf4d35a2ac
change-id: 20251105-aheev-uninitialized-free-attr-net-ethernet-7d106e4ab3f7

Best regards,
-- 
Ally Heev <allyheev@gmail.com>

