Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AB586B45C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 17:12:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1892C409F0;
	Wed, 28 Feb 2024 16:12:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v28p4QgBrMyr; Wed, 28 Feb 2024 16:12:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65D144052E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709136771;
	bh=/Zr38ZfbAtVyJs0WSKTX26b9HT0iMoobWLC4JSkjjuk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=YabcZCSr3Hme4t0rDLXdu4tlI0SvTVHLpB2tuf5AFw0VVT/8yPeFvmCG7PfK4vSiJ
	 TbjBVKX5m8dV1MjxV3xuXQFcBhJKA8bGqRap02fab4tH2fZoxPUlEmCAVIfgTOTq/T
	 2g8RlfvSl2mVhwASEPE8tqu72dbmTpQO69mOA721qIzZ1tLkE0OSP2AI31ec7nEkrV
	 915rh/I69LIDvvDWGqA6cllcdYt99iSoG4w/wAiaZkcJpNAhIZhnVDaq4X2tVHLN59
	 qgJHjcygCMDJx4KXWvpUTt8lFE7X0lIf3VwGD4XFUJZ2gzcCtzyI/p/4qfI4TK4qDj
	 gcPxjpFBV3YtA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65D144052E;
	Wed, 28 Feb 2024 16:12:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD1561BF294
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 15:56:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5C23401A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 15:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mqqr_-rTBCju for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 15:56:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::232; helo=mail-lj1-x232.google.com;
 envelope-from=rand.sec96@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4ABE1400D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4ABE1400D9
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com
 [IPv6:2a00:1450:4864:20::232])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4ABE1400D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 15:56:28 +0000 (UTC)
Received: by mail-lj1-x232.google.com with SMTP id
 38308e7fff4ca-2d2ab9c5e83so19428001fa.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 07:56:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709135786; x=1709740586;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/Zr38ZfbAtVyJs0WSKTX26b9HT0iMoobWLC4JSkjjuk=;
 b=IQg3wHcTa3LF85w/zBcrEXGNMcc103DZKUHBcJkwGsWz7DguiO4tmKk3p940DmG6ge
 GnudxZryoU1ITVvdweC+gdgBN8zqpbjgPQY2gd98q4HjCVHNMqWHK5goZ5YhPzoZGDG/
 svv0jmX0zOrFZNEF6jh9iGxSsauXq9MEwxmozrREz8y1iCikKrye9bdV3213oSvdWFmt
 OpIS97UaoZ1qEOxIeMz+uXJ3KDUR02WpNtw0tZCzHbRwbQUCrPleQDNBRzWFLU6SJA4C
 vzM7/lDGVkNOqzpg0D/9Uvm2FwJPL/0dg6/Df4rb0izV7AiSQn3V0I5dW4plTGIA7pCn
 xaOA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU7yssMcTzGLWyUklfnJbPqDEw2dLbyeE+efllxVrqHuK6cBxayKowlEmUbcijq/K9qvEfoPVVSPPjr/so/L3AJNlIOhiWLWNjXKAtdcqna9w==
X-Gm-Message-State: AOJu0YxxXx62NhX2e/Rg+h9yv3fM/kwTv7pA3UU6pRYFzaH2zAeXxQFh
 NYp/CKRJIfUANAJuPG7G9+gJxlb4md9OJqshmEK6eQqxVQcJRtW2
X-Google-Smtp-Source: AGHT+IFNobqy9dV9FmZ8nJcVhIZ7gSPgpm3c1uQL5miWa0hstEvZcs9iBhGYN77ZysQDhJVYR3TbGA==
X-Received: by 2002:a2e:a716:0:b0:2d2:e554:976 with SMTP id
 s22-20020a2ea716000000b002d2e5540976mr351159lje.14.1709135785839; 
 Wed, 28 Feb 2024 07:56:25 -0800 (PST)
Received: from rand-ubuntu-development.dl.local (mail.confident.ru.
 [85.114.29.218]) by smtp.gmail.com with ESMTPSA id
 e1-20020a2e8ec1000000b002d2d8d2ee45sm164863ljl.12.2024.02.28.07.56.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 07:56:25 -0800 (PST)
From: Rand Deeb <rand.sec96@gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Wed, 28 Feb 2024 18:54:48 +0300
Message-Id: <20240228155448.121603-1-rand.sec96@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 28 Feb 2024 16:12:49 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1709135786; x=1709740586; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=/Zr38ZfbAtVyJs0WSKTX26b9HT0iMoobWLC4JSkjjuk=;
 b=WWEDr1XnpnGrruJNx/dZyAh3264yXejbb3iF3FQn6Ufsv/sVKC/I0Tscte7lj2oQ5Q
 P0aqki7CbsXq5UgKWUpFdje9MT+u+x4bxUz05J/n2qgF767hHIT37BQ7r0RScEZPlsaL
 83mJ5h3lafPeFjI1vgUxu/LGuooDgfYORYKQhP84USrkE6x9xqPu/K9HoSPb2MRR0s4r
 suIN5fbzXjtfZ/8ls/p0iGSIF8zeaIJ0RPP+ygEHaJcPz7FJpmXA7Ska8C3+5X0cWvmb
 SbMc1dLgxNW83K5NZX4++DxUR5ckoUm1Prd9JIx46XThsVSUjOMSeHdao21TU0TAoPEG
 FVzw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=WWEDr1Xn
Subject: [Intel-wired-lan] [PATCH] net: ice: Fix potential NULL pointer
 dereference in ice_bridge_setlink()
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
Cc: voskresenski.stanislav@confident.ru, deeb.rand@confident.ru,
 lvc-project@linuxtesting.org, Rand Deeb <rand.sec96@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The function ice_bridge_setlink() may encounter a NULL pointer dereference
if nlmsg_find_attr() returns NULL and br_spec is dereferenced subsequently
in nla_for_each_nested(). To address this issue, add a check to ensure that
br_spec is not NULL before proceeding with the nested attribute iteration.

Signed-off-by: Rand Deeb <rand.sec96@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4f0d63fa5709..ba2bbd53d543 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6530,6 +6530,8 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 	pf_sw = pf->first_sw;
 	/* find the attribute in the netlink message */
 	br_spec = nlmsg_find_attr(nlh, sizeof(struct ifinfomsg), IFLA_AF_SPEC);
+	if (!br_spec)
+		return -EINVAL;
 
 	nla_for_each_nested(attr, br_spec, rem) {
 		__u16 mode;
-- 
2.34.1

