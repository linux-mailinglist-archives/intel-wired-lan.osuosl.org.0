Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9E4BF77DD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Oct 2025 17:50:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4DEAD405B9;
	Tue, 21 Oct 2025 15:50:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dWYHLsH0TDs7; Tue, 21 Oct 2025 15:50:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A3A9405C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761061828;
	bh=P+G8JYuaf9/ocVW9AZ1OS+iljK78E4LjTUi/n8zsx1Y=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=qRzLkRBG3lGjyCk5NfBb14NC4eTsDyM376lSx9rS5Xv0S0XNPsepiuLJJw2F0uFaw
	 tmeM+KhEg79R6e7jCzMZ1qYoKc7mL0pPUFcBiLKYC8HRAGQyHKKbIhPjThqD7+b0eP
	 1F0nPTjAqPApDNzBfoIwx9gYVnqZKEMUh0YXaUs0SPsUlkvDqLeL4OMKgKn2Yq9/ir
	 QF/yg1dHOM0R2Sm2OxogNlpKzFRgp1YzyHaSYTY7MFkahwp4VsEtkMWeVlJCZtL6rm
	 3/hT+8H8XIJo7Zmkp4629QN2eMEC3Rurw7DKRHFzPIlgNSQCzXXsDIp5f8i5yfgUji
	 +EoRGwEHHgnZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5A3A9405C3;
	Tue, 21 Oct 2025 15:50:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4061E277
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 15:50:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2A6E340079
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 15:50:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NJ4L3DdqUMLb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Oct 2025 15:50:26 +0000 (UTC)
X-Greylist: delayed 337 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 21 Oct 2025 15:50:25 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D89974000B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D89974000B
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D89974000B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 15:50:25 +0000 (UTC)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4E6E73F6EE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 15:44:44 +0000 (UTC)
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-b3d21b18e8fso600090966b.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 08:44:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761061481; x=1761666281;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=P+G8JYuaf9/ocVW9AZ1OS+iljK78E4LjTUi/n8zsx1Y=;
 b=n/V03nG4WZkZBwCUYdDcvHIivN8Mtb2nHF4ujSkZp1JgRaydR6Ar23dha/mHqDmqar
 0/9924nJnDQCLrTlPRNTKyaWKzqP+R7wlFe8SEif2XRmfjVHmbjLflOmhj2t/6L9tyKG
 aR22apajjvq2/3BJ0jSQiaJT/X3DYdsqikp//YzwcfqTChGg2SVoe9AV/ulF5fDYDFnS
 L0GzO9fcKwDhewjPQUpTMXbwfjyHdBJdhqeAUDpB7wHoT/olJIn4y0JvjJYb1JmSN2r9
 iVZij1/BP4KFBtD7+Cbj4/oYuQjPpM1iG5ysOMpce4gpuU6zZghWgzEyrI9SNPG/nhON
 /yTA==
X-Gm-Message-State: AOJu0Yzm2wqB1PSBDJjjMHVEaImrK/s5PRfYbUvG2odqtwVG6vYn8tb/
 Ev7ZZ6QNrD2lyyQIUZjAACY5x7PHjG6c4TkrjXtlj+s8tXCxQS85me3WuuxYletsQVpTTk9Y9DN
 sW43aZbmjmVd0Yf/J0cq2LNGaD7FZvSvs3k968JSitTlF/gyzcv/9IG7E2PZbZTwZlkDSe1l8zm
 RbRjugvQY/YmVG9JRgzJOhCA==
X-Gm-Gg: ASbGncsns++bA2QjV9/aFWqsWs6XgtKRqYAgVDdbX+LDwpG57xRGGYzWmzGVIevzmHf
 QrJO3HAyeecYexxl2mMP7OO7XgXW93xmpR2Al/ubBolDZp1bXFnkxW0SQaM8SDv05xep+rwrEzs
 upIsLfYmeNic96eIO5xCmsmvkMxUNUC3k3+hxpMLqF5JmNm2paCS6h7Bti8lLcDln+0TMM6wp71
 s1JqzevjBJrsubDf2TRjpbTCm3c+9VsbJjcYsA78y7SArrQEwzqmHaPSOeXZlImbyhs/PX3guIh
 Ca8b92ipkTYzyUrkFLbxcq1Mwdnp+yq9K6HkHkbw81miwgUgYcK5x2bjxvQZOnLayvDxGcsiIuV
 fYU0+YdgYTX9RpSkn8Xeu3qO66RMXt8BaLTg4qBmAarDqAyvYp/IAMyW0kBY=
X-Received: by 2002:a17:906:c113:b0:afe:764d:6b22 with SMTP id
 a640c23a62f3a-b6472d5bc0cmr1897294966b.9.1761061481506; 
 Tue, 21 Oct 2025 08:44:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGm0wKz87sI/6oHhB29rkZgj45YdZCQPEnAd4R3RSLzzHhO5TmkzmBCmhcnqV1ji4CXZ6UqlA==
X-Received: by 2002:a17:906:c113:b0:afe:764d:6b22 with SMTP id
 a640c23a62f3a-b6472d5bc0cmr1897290766b.9.1761061480956; 
 Tue, 21 Oct 2025 08:44:40 -0700 (PDT)
Received: from rmalz.. (89-64-24-203.dynamic.play.pl. [89.64.24.203])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b65ebb4ae4dsm1087924466b.74.2025.10.21.08.44.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Oct 2025 08:44:40 -0700 (PDT)
From: Robert Malz <robert.malz@canonical.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Tue, 21 Oct 2025 17:44:39 +0200
Message-Id: <20251021154439.180838-1-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1761061484;
 bh=P+G8JYuaf9/ocVW9AZ1OS+iljK78E4LjTUi/n8zsx1Y=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=ne2sqAX8AvH27fLEx3pjLPXqM3DYMs/A+efN1zTn/lPV1RUeKSVAQjVP9CqHBJnyo
 RPBhHAs+zdWB3mHxxPMEe84GnwqjMK/tkTX5pCV6dH7CPpJEpIlgGn7W93w7metShl
 EJ+b/iuUWeeWHtSel3fwjoKN+40ZNjQbQhPqVIUicc+a21LKRkvEOuZeT5OyAcOcbX
 SkarTwtVxxqN/XcLQq1ljTAHAEqemlBsJdZCZgMN1e9OpChATGJaxzRFLf+qilwPNp
 v6jbyzvOIRY6+IIUl8fQSvV3OocZUvikuzNHUHCtundlRBOw44AohxCiMeEC5KF223
 FIUUIc4dPwlxcrmN7w2g/UEWGdrUtzZJSd7YLsGWHN67lvTBXQUpm8hSv3je4zo/Gd
 HzboVTyg7wVxYcW3qEc+vZ/YukgCwun7hNNoR+QPXpB2/owKhj97nnyc8m4baktV76
 WMZ7yrb0IUIL8EePi6EuqunCScMW+0HFJvu3PBhYV8KJjIGV01iLJnD/WYTW+9Q7co
 3dxF7v/YIloxjAxnRinKiX6hmt3wJoTn5n1C9p5Bd5Q0/lqfzr+kpPmbFejsVs8Ctq
 6BkernOLahyUu0RVrC2L37VPSpKEnEtrXbkHgvXzJegr6NLJ/pF0iWxwbQJsxmw5HI
 bjxqkt2mJAetun6rMkmOwXcw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=ne2sqAX8
Subject: [Intel-wired-lan] [PATCH] i40e: avoid redundant VF link state
 updates
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
Cc: Jamie Bainbridge <jamie.bainbridge@gmail.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Dennis Chen <dechen@redhat.com>, Robert Malz <robert.malz@canonical.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jay Vosburgh <jay.vosburgh@canonical.com>

Multiple sources can request VF link state changes with identical
parameters. For example, Neutron may request to set the VF link state to
IFLA_VF_LINK_STATE_AUTO during every initialization or user can issue:
`ip link set <ifname> vf 0 state auto` multiple times. Currently, the i40e
driver processes each of these requests, even if the requested state is
the same as the current one. This leads to unnecessary VF resets and can
cause performance degradation or instability in the VF driver - particularly
in DPDK environment.

With this patch i40e will skip VF link state change requests when the
desired link state matches the current configuration. This prevents
unnecessary VF resets and reduces PF-VF communication overhead.

Co-developed-by: Robert Malz <robert.malz@canonical.com>
Signed-off-by: Robert Malz <robert.malz@canonical.com>
Signed-off-by: Jay Vosburgh <jay.vosburgh@canonical.com>
---
 drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 081a4526a2f0..0fe0d52c796b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -4788,6 +4788,7 @@ int i40e_ndo_set_vf_link_state(struct net_device *netdev, int vf_id, int link)
 	unsigned long q_map;
 	struct i40e_vf *vf;
 	int abs_vf_id;
+	int old_link;
 	int ret = 0;
 	int tmp;
 
@@ -4806,6 +4807,17 @@ int i40e_ndo_set_vf_link_state(struct net_device *netdev, int vf_id, int link)
 	vf = &pf->vf[vf_id];
 	abs_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
 
+	/* skip VF link state change if requested state is already set */
+	if (!vf->link_forced)
+		old_link = IFLA_VF_LINK_STATE_AUTO;
+	else if (vf->link_up)
+		old_link = IFLA_VF_LINK_STATE_ENABLE;
+	else
+		old_link = IFLA_VF_LINK_STATE_DISABLE;
+
+	if (link == old_link)
+		goto error_out;
+
 	pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
 	pfe.severity = PF_EVENT_SEVERITY_INFO;
 
-- 
2.34.1

