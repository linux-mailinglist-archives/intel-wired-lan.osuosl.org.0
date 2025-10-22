Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FABBFD0EB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 18:11:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA10640A8C;
	Wed, 22 Oct 2025 16:11:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G5YPZVA7GTQh; Wed, 22 Oct 2025 16:11:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 329AE40A91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761149516;
	bh=fJ4eaCLAd1T6Qi1tAvgT59ff6VgTNShusVhiWjf+ZSE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3oBlHKgIXAd+Ml3y0Vf5OpDBH+ud89b6NdRRH6g7lKQOGqceTX19IK5rMpqXoNP7I
	 RmwWw0jJtNlhpr2voIqyiiLR9oJ1xpBoJ+lvIJyzxHEb4VEwojcA5Eckc6Q3z+m+j+
	 FQeBmFLckQNE3bOVrROC4dYSOaTy0RCijJwVkxnw6EtwZczfhwFhZb8uutiZEGk5AI
	 s4ozOj9TPEOvFGE3VjptNjIRb4Lx2wGvvvSuMvqah51GDrEFVJgubm0b6ejeDBRYm4
	 GbblIZrsjnmHZfcI6fDqaWl8SlHNoGBayRtkJpaQ+KiWyW3ibZXf8yWAa5v6srrFHy
	 IHDtWnhHFyZfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 329AE40A91;
	Wed, 22 Oct 2025 16:11:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9B57143F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 16:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 826CA40A89
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 16:11:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I0ckHkMB9Ysx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 16:11:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6333940A88
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6333940A88
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6333940A88
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 16:11:52 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1494A3F7BA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 16:11:49 +0000 (UTC)
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-b6c2612c72cso395873866b.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 09:11:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761149506; x=1761754306;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fJ4eaCLAd1T6Qi1tAvgT59ff6VgTNShusVhiWjf+ZSE=;
 b=s5Hr/1Pj1QXBOxGuMTBkEXCwvrpUfTWWwT+ncG2qYVmnFEhAEwseoajWvEVH0bM/UL
 9oYue7HzcDwn+WiT+aoPlsMYRDtGr/MdlOVN8VedeUKeuZnIXOCzcjlMM3M0BIP/IByW
 z6YDe4ub0cSkvL83nkYgI7UvsXDqAFSPcTDSyuqExPmkBWOikIRrcWryUKh+25QBClTu
 ER5lICfb7yDUedT+bBLX2mX7VRFhcJxFgLGAvDymhi5xZ7Nl06SMHJpJCbNljmOkeyTr
 P+osbrq6tadGbUh2O+kM9H4ax4mmgLOHcKxEgjFTGff4J7bVf7HnC8d59qrrBTyK3w5X
 g33g==
X-Gm-Message-State: AOJu0YwZ7oVJxuAcIhDYbIXd6qZmHgu1XUqNsMkpaEuuRZ0HOIBZfKhB
 oBQUqGTdB0WY8h1ojgkwIJL8dD/3mHid2YXeP4m+E6sUP+bSopDKnRVqTZD7maJOBOrxvKN3GOT
 GH4PN4mQiaJXkloKCFUYKpgV+DwXS89MvBhSaV5LLic38ZIuvCn1t4IsJXjzkPa47gOXI4kruMY
 AgTYdNlu8rThBoTe85aLY5Ng==
X-Gm-Gg: ASbGncvhiMZi7itt8wlabSGb/DoLm8kQRW19QYgYbJ1V6u9sjdPJDJxwrDm4MAnJqZH
 JZXgqPWIT9YbyjbtpLkAgH8Ac/S5qbpuCKIU9/J+mymhOi7f2BxM/Nl9tH6hpzIbaDpfYIJIlPL
 G45bhVrdRAjr+asWpqv131HxbD1jvXhqvMqq061A1gcMvGRrEnrQGkrpbXdKktCT+tBQuh/mMwL
 Z6P90WUZfX3M4/Cyi+H21ZagEPVQTBLEYClE5UfI83xpa2/V85wRSFXT+rYWUA13k5IVOn01wNb
 a1JNJCCLdrHsSf8EGwRvKk5EJQaLEdGKZVkpv4jwNINctmxpFEkIGG6+d0MSqnv0C+ijk40X8Oo
 ZFpCnAsy7KbN/PvlVkQjwuWUaM1qfAhJa0siC3xYHH7Ihgv5kOwSxeqIYMKA=
X-Received: by 2002:a17:906:fe4b:b0:b0b:f228:25a with SMTP id
 a640c23a62f3a-b6475a0347bmr2374826866b.64.1761149505870; 
 Wed, 22 Oct 2025 09:11:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsIOTZ0/NmXygXvRAij62k1mXr5cxAWBu/F6+ubCac0eQdjwISwDyzdPouZt9bR27eiPT2Jg==
X-Received: by 2002:a17:906:fe4b:b0:b0b:f228:25a with SMTP id
 a640c23a62f3a-b6475a0347bmr2374823266b.64.1761149505472; 
 Wed, 22 Oct 2025 09:11:45 -0700 (PDT)
Received: from rmalz.. (89-64-24-203.dynamic.play.pl. [89.64.24.203])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b65e7da33c6sm1360296966b.2.2025.10.22.09.11.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Oct 2025 09:11:45 -0700 (PDT)
From: Robert Malz <robert.malz@canonical.com>
To: intel-wired-lan@lists.osuosl.org,
	netdev@vger.kernel.org
Date: Wed, 22 Oct 2025 18:11:43 +0200
Message-Id: <20251022161143.370040-1-robert.malz@canonical.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1761149509;
 bh=fJ4eaCLAd1T6Qi1tAvgT59ff6VgTNShusVhiWjf+ZSE=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=kqcrIgbxN+JPuy8/MjZhGyEOd1qAFSh/MvMRk+vojmEZLznj/rem4AbfjPlfVd1mV
 Pwqx7JuRaNn8x3ycyLVRsiT9n/OrZmSY95NMARDxD7jm1dAs/BRAX8VtttCxxa4XI+
 wrddl9t5fbYwt6oFk3C2kNftJUI8vLI+F24JY7PnPApSlujoeHztAKoc3pN1GtGCgq
 sPa+ZM+fe0js+Ql3IEPd5kn621FPRtV9NxE6YWPOP6p7ConwOZ4yXeR56oaHdmZK18
 tSpBjXEXv5Bu5Jx2SgPJxi9jzN9eVmj1z2nFmlqVx6GCLzZEgCsFMubuDAL73vuXbo
 rHAYZ0CyhgNacZcaUdNtm9nxcWHoMA5M1yoa1srh3q8MRQJKO2e2JD/QZ2eV5dsrse
 G7DFQpH2njtRqWkXo/ihrUDlJuaZX+2iJYn5ORlY0r+j+pzuA5rbJ+acXXsxV1fnDx
 g0VfX9vk04vLS2o6NOpoWpWS3fQu9ROKtHQHycQ9vik+asMJ8DMv/mb44LcH6T/mpY
 YBPhebqxPROIEK2uq2a0blFFBDkZBtzJ55qEO/nB2nCyll0x9IGIAmWTwIagL8C6K9
 iXLI7W0Do7IoEZFh1xZImQ1JLp68UbDXu+ceG4igLy9V1bQDZG6FKY14s8kgDyqCjA
 oO8ykM/TGhthx3IglSLvFoEw=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=kqcrIgbx
Subject: [Intel-wired-lan] [PATCH v2] i40e: avoid redundant VF link state
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
parameters. For example, OpenStack Neutron may request to set the VF link
state to IFLA_VF_LINK_STATE_AUTO during every initialization or user can
issue: `ip link set <ifname> vf 0 state auto` multiple times. Currently,
the i40e driver processes each of these requests, even if the requested
state is the same as the current one. This leads to unnecessary VF resets
and can cause performance degradation or instability in the VF driver,
particularly in environment using Data Plane Development Kit (DPDK).

With this patch i40e will skip VF link state change requests when the
desired link state matches the current configuration. This prevents
unnecessary VF resets and reduces PF-VF communication overhead.

To reproduce the problem run following command multiple times
on the same interface: 'ip link set <ifname> vf 0 state auto'
Every time command is executed, PF driver will trigger VF reset.

Co-developed-by: Robert Malz <robert.malz@canonical.com>
Signed-off-by: Robert Malz <robert.malz@canonical.com>
Signed-off-by: Jay Vosburgh <jay.vosburgh@canonical.com>

---
V1 -> V2: updated commit message, added information how to reproduce

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

