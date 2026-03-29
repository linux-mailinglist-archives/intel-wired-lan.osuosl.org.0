Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEOdB1SXymla+QUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 17:31:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BA235DE47
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Mar 2026 17:31:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CFA060C07;
	Mon, 30 Mar 2026 15:31:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ncz6VKTTymF4; Mon, 30 Mar 2026 15:31:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B95AB60C09
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774884683;
	bh=39nWh5Sbwqb3QyZ67qx+99ZIlQgRVmnOj8xt3uyYktk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=OfDOzwKuVZlQQAYEGusiLk5uZ4SD8EW3ZRZq0/mTD+OVEy08XzP02EGVX4AIMaFxJ
	 EW3OxADk51XBKn+nD1jyl2QDMShlfj9EQrxohbMib0Hs9yCfPEsXWLwy3I3umPmXeC
	 O5r20MYQR8aewHXHNx6rUVuOgVZcBlqaqWyplciKwXj4xK7LKmSWwfbG8lqXAzb09N
	 H9+1OwICySg5Xi6NIQvZJZ4AWQmtdnA2JhdHyrQbtt78cjCC4z20gJ529AEARxQi4o
	 UtBpFDTru/2EZQQFl3rr8+pO9hBsuPeayvJpN8iDJHYADNPCS+u2EfWZq9wGxr0Xsl
	 oGacdPMOM+lfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B95AB60C09;
	Mon, 30 Mar 2026 15:31:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2690B2EB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 16:22:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FEDB60770
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 16:22:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YYg7-5zD-MZw for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Mar 2026 16:22:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=aaron1esau@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2A5B460768
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A5B460768
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A5B460768
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 16:22:26 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-4853a485721so5375225e9.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 09:22:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774801344; x=1775406144;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=39nWh5Sbwqb3QyZ67qx+99ZIlQgRVmnOj8xt3uyYktk=;
 b=Ury6lS5n7Md/lwDB8EpcrpuwMmX+WbF2npmaKIiTZb4dL8EWxhzlnp17K/yzIg/1F5
 t0FabxwOgQKnsHBo77MpWsTs8CRejNePOTHSZSpDBEH6rWEYXcSz/PJkwd5mGnADUl0/
 aK4NASgAfsAItHz1KFIfTlT5ffsh5XBRvNkgEaPGRgFbclHLru276Mzc+/CWwiGQw16q
 YTjFF3Qo9CgJnSa68DB7MUEc3DZsENe6zs+0gFMJN4g+w6O6IDUy6o52BF7gCLfW75pP
 d+WEjwEUYhnbkK++RuP9dm7PhFdxBD/BVc6iERdvYDxkYCbt3hzk5yo2jsgpdiBPZ3mi
 nSPA==
X-Gm-Message-State: AOJu0YxyPMZrAlzBmAgJmsShCH77F3gu94GLaP6hiDID6ftW4cE98hN2
 eva13WsacaaVjoXfhAbcjxyNe3m/WsCMCSVvJeAqjUbOIqii522JUTwibYPytA70xeM=
X-Gm-Gg: ATEYQzx7ILLqjqbPNpxCIr12LfDeHZAf1anHhtH3lQXBk/asEYlgLzlaGUwkVZbVQ0H
 n+rILeRAPNxNynFJtDM73z34zIkjev0WVO61sZn/QsXI61f9nHjmJ5w6dwKIpwLgmXcxJ8JmHcZ
 lZVx+3L5NxVeddN6ATyPln/R8UJX6u3yjXOaluzijaSYtb6veQ1/KxEpbvQqxSUxtLrNBb9DXrl
 CwfPE0yxFU3uGOFNEPnkKVLcwGe2PwCFjwADQ5jzCpeQQmTG7rnBZ6HU7yldCszWOog9TjXmFVs
 +S4JEbPXGrUlztJpEItJ1nOWTgYdLOhrltzkQPnUhw0gzPuFNDcPXx9rRTobGgOKDwdH0RI/zQD
 JcOrOVLbqySFSHn9jcPK8tpVxvWMXIEm9zli+05tqo/9b4Fr0k6H+8jPAdWR9Sy07fMTNrFgdkm
 R93WXaDwQ3xtR/OoqFwsIqXS9F472eGA+QoIkr47cTlabx37mo7uXityxsLN+VcrC2iZLkNHcic
 8jzTauN7DDQj39ddSsrrkctBcXI
X-Received: by 2002:a05:600c:b99:b0:485:39a1:bcb3 with SMTP id
 5b1f17b1804b1-48727f5f8d8mr76636175e9.6.1774801343387; 
 Sun, 29 Mar 2026 09:22:23 -0700 (PDT)
Received: from localhost ([2a01:cb1d:4ec:6700:174f:90cc:2ec3:a84b])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43cf24707f2sm12760803f8f.26.2026.03.29.09.22.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2026 09:22:22 -0700 (PDT)
From: Aaron Esau <aaron1esau@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, arkadiusz.kubalewski@intel.com,
 stable@vger.kernel.org, Aaron Esau <aaron1esau@gmail.com>
Date: Sun, 29 Mar 2026 18:21:51 +0200
Message-ID: <20260329162151.2043655-1-aaron1esau@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 30 Mar 2026 15:31:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774801344; x=1775406144; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=39nWh5Sbwqb3QyZ67qx+99ZIlQgRVmnOj8xt3uyYktk=;
 b=K5zjnkLBRQmLZOrcXL/uMMjQxsLvySkNce2POEbRwn/ZmjPTgePJBnpvv4CquZjcfu
 wCg3Pjdz3+bskS8YHD25aXnOgOF5EaAyroWiZoj+oM3HYi4xC9QX1NbrQR3JA7TzTXPx
 bgKmlAgWny2oyjYoDSOEHlhQrYu0vY92EQEdOqGY8lnociyrdXV9g7co+Ua9fXyeB+cI
 jUuM/biV+KXkTGO/K01ASrSGN4K424rQ9ZSIgZYVI6Ioint9g005bm12/R/isyRmvUMB
 YkRAD2nmqFJzytPZIECalMrq3ytaXFq2AxoI8EyoS12Vt0w4rfttmB9RCo9HyOY2Q2zL
 +GKQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=K5zjnkLB
Subject: [Intel-wired-lan] [PATCH net] i40e: fix memcmp of pointer in
 i40e_hw_set_dcb_config()
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[aaron1esau@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 79BA235DE47
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In i40e_hw_set_dcb_config(), both new_cfg and old_cfg are pointers to
struct i40e_dcbx_config, so sizeof(new_cfg) evaluates to the size of a
pointer (8 bytes on 64-bit) rather than the size of the struct. Likewise,
&new_cfg and &old_cfg are the addresses of the pointer variables on the
stack, not the addresses of the actual config structs.

As a result, the memcmp never compares the actual configuration data,
meaning the "no change needed" early return never fires. Every call to
this function performs a full DCB reconfiguration (quiescing all VSIs,
reprogramming via "Set LLDP MIB" AQC, and reconfiguring VEB/VSIs) even
when the configuration has not changed.

Fix this by comparing the structs themselves rather than the pointers.

Fixes: 4b208eaa8078 ("i40e: Add init and default config of software based DCB")
Cc: stable@vger.kernel.org
Signed-off-by: Aaron Esau <aaron1esau@gmail.com>
---

Found using Coccinelle/spatch with a semantic patch that matches
sizeof(ptr) and &ptr used together where ptr is a pointer type.

 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index XXXXXXX..XXXXXXX 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -6904,7 +6904,7 @@ static int i40e_hw_set_dcb_config(struct i40e_pf *pf,
 	int ret;

 	/* Check if need reconfiguration */
-	if (!memcmp(&new_cfg, &old_cfg, sizeof(new_cfg))) {
+	if (!memcmp(new_cfg, old_cfg, sizeof(*new_cfg))) {
 		dev_dbg(&pf->pdev->dev, "No Change in DCB Config required.\n");
 		return 0;
 	}
--
2.49.0
