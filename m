Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A128B2E132
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 17:33:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E44BF60E03;
	Wed, 20 Aug 2025 15:33:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id paeViWqnDAfG; Wed, 20 Aug 2025 15:33:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54BF560E55
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755704002;
	bh=O/XhOpQfSquhT6qAiE/Hm7UDJfbQoL+JBQv5VOGD3m8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=JQgpfw2jwBhy4h5fFwyIxuZHHpQ69A4/7+dZDmGti3ZNuyQIqsLWnd3TjXngX/vfZ
	 +XmZvD4ieZ1OVpPJRjaClxxzSltyrpivWddPTy8wljHPPkIhWfkUz339XEFTYJQHzt
	 LNwH0SBePa96M8kU3QLpU0H6cWYT38QwGP3DNzdcT9KeclYbgFwC+SkqI61SvMWfXW
	 Y1s5nNypbnNNl4SoL+icFzKPzsuqEduGHHeq7LkOkLmOHrY+QL7PqammvqK42iYFA3
	 zgcIDPaga1OtYeRnc6KpGxQPPsOlbNqv6QQcTxhzLVdHKtWwFoNH//tS8bede3i2Hi
	 sauBkjFvSfLSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54BF560E55;
	Wed, 20 Aug 2025 15:33:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BBE86E0A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 04:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9A110610CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 04:30:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oN1e5gBQURcb for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 04:30:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::435; helo=mail-pf1-x435.google.com;
 envelope-from=calvin@wbinvd.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DE7AB610CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE7AB610CC
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com
 [IPv6:2607:f8b0:4864:20::435])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DE7AB610CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 04:30:01 +0000 (UTC)
Received: by mail-pf1-x435.google.com with SMTP id
 d2e1a72fcca58-76e2e613e90so4435071b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Aug 2025 21:30:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755664201; x=1756269001;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=O/XhOpQfSquhT6qAiE/Hm7UDJfbQoL+JBQv5VOGD3m8=;
 b=aoBMfFRh1KVqKSS1F3EGY3nLyjFiNHvCgNo0yXh0jETRp9oKC3BEDqgW+C0q6EaCng
 kSrsEcdcc5ykdYWn+9q5sRfwBO+CCNk8E+BmczpUZBkZQhj+MpoSbiOpzWi2SoaWAEV4
 RtPlvbJYynTMAiMyXITOU0iJmN4C9v9cTKWtmQlV58o65LBbLw5Fo1O5Jsj93WC0dAoP
 akjpVI4k9/7XYWZfL8xveD2U8Uk1m2YoO+8ssDhkYQgqGo8gvK1yRKzlf47PnsPZvvp3
 10H7nc7EcKRtXcPlC2YWliKSr6O4+T+q+0l0VVRV0IcnMVDXtZLeHin9ewwzgd71TlwY
 a1VQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX5T7WBoGPpLURGw8zgzQtCvaXLA8hQGGXjrV0cH4o5EZQLW9HWUxU6UR4tSeANKGKZvjwgOXSCwy5Rt/Fyr/o=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxj/s5sU9AuB90uZ4g4ZvevJFtRh7Bs0zF2NZlnzdYmi9CaIzb5
 6rK2+dMTKZ8gX4d3hnOMR3LJl+8JpcBT14UAFWBYQy0pdYB5gETcxuC1lPat0W57Nok=
X-Gm-Gg: ASbGncsrJsn1D7MvfkzPGbHPC8wuCK3T+9048v8EV1u0DQ+9HwcgknBSY9JC8Few1Zk
 SjdtZrEVSQ9S7BRWI/5DGZX5yxJwtD9RwQhSnUUijHVnYqXlK7M5UspBiAFMFSA2c/kTjxXrnkW
 +muHoTsAMM4xWYGOddQiRaRcHKNbf7P2ZRk6us+MzSiCdluUCkRVLUjegPzEOKfF9RKBxTd1sdF
 dLILWjckHp9dpfqYVWsh9gI7OIu/ZJ72/7alt7lzGD8+aNw7mdEBFWXmp2wi1evo9j8uuLwbSeg
 4Q2/I0pLybETniBoyZ01UIomSQzkuVgsrR0LKUGWUGEfvTEtFYPsLx8YkwYFCqU2n+YnOggSKV2
 E8wRybgjVkAUDGLZst9YXEiyz
X-Google-Smtp-Source: AGHT+IGZr4nlgpLI+auV0iC4Ha3LGY7jX80Pp8ALkEHgYHjKKLQHDtDDxmFwBV4EzhFfQNMUpADqwA==
X-Received: by 2002:a05:6a20:9144:b0:243:78a:82b8 with SMTP id
 adf61e73a8af0-2431b941d4dmr2365720637.50.1755664201106; 
 Tue, 19 Aug 2025 21:30:01 -0700 (PDT)
Received: from mozart.vkv.me ([192.184.167.117])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b4763fe8aaesm1133488a12.19.2025.08.19.21.29.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Aug 2025 21:30:00 -0700 (PDT)
From: Calvin Owens <calvin@wbinvd.org>
To: netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Ivan Vecera <ivecera@redhat.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Tue, 19 Aug 2025 21:29:01 -0700
Message-ID: <94d7d5c0bb4fc171154ccff36e85261a9f186923.1755661118.git.calvin@wbinvd.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 20 Aug 2025 15:33:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wbinvd.org; s=wbinvd; t=1755664201; x=1756269001; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=O/XhOpQfSquhT6qAiE/Hm7UDJfbQoL+JBQv5VOGD3m8=;
 b=K2tJxKyt+pSJvA3QDjieRelFHkajRVB2KkOVbZx0yJZ8cS89BWU4wlyK1VIgogIchw
 /OepF7M3Oyd2LGmaU4UKsgd7Qim3ShWEWwdb9URdAMG7hgFT+ToDlM0mxEx+B0/E5E9d
 pkkw/sO+4naTvF1N0uHNAvD28e/KJ5lv8Wi7A+GpWTQ2F0MHzJGJnatSXpQ2Fy2JGsrP
 Jx8NolLzRMPqE2o78LvbxjBpcF8YZIjslvAqWICy1oDddmw5yWBN/lxQUWrDQU7aR/jF
 uI4MpXsDLDKMg77q1AkqcvCV6ME6HjoxOrxKbFeJf0Kux5UN1xWeWYkNM7pr+k8X3lTE
 IKlw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wbinvd.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=wbinvd.org header.i=@wbinvd.org header.a=rsa-sha256
 header.s=wbinvd header.b=K2tJxKyt
Subject: [Intel-wired-lan] [PATCH net] i40e: Prevent unwanted interface name
 changes
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

The same naming regression which was reported in ixgbe and fixed in
commit e67a0bc3ed4f ("ixgbe: prevent from unwanted interface name
changes") still exists in i40e.

Fix i40e by setting the same flag, added in commit c5ec7f49b480
("devlink: let driver opt out of automatic phys_port_name generation").

Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
Signed-off-by: Calvin Owens <calvin@wbinvd.org>
---
 drivers/net/ethernet/intel/i40e/i40e_devlink.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
index cc4e9e2addb7..40f81e798151 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
@@ -212,6 +212,7 @@ int i40e_devlink_create_port(struct i40e_pf *pf)
 
 	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
 	attrs.phys.port_number = pf->hw.pf_id;
+	attrs.no_phys_port_name = 1;
 	i40e_devlink_set_switch_id(pf, &attrs.switch_id);
 	devlink_port_attrs_set(&pf->devlink_port, &attrs);
 	err = devlink_port_register(devlink, &pf->devlink_port, pf->hw.pf_id);
-- 
2.47.2

