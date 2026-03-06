Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIq9Jq9Dq2nJbgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 22:14:23 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2AB227CBE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 22:14:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9D7F41EAF;
	Fri,  6 Mar 2026 21:14:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wZVKD8TaUITi; Fri,  6 Mar 2026 21:14:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD68F41EAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772831660;
	bh=kf8fkyYdC+lpqfiu6tiuKMsMUIXPATxKomGIGLejXUY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aa+FCHkFgBd6RZJQgGzEqixoMnix0gbjH1CiIIJXOOZ8LNDICkgCx5rOtwu8AfKkY
	 JJYEy26/YysmSZlK2KX6h5noEjq9B2iWMm1kK2GS38SAobrm49CMMjBsLKt0S7lptH
	 rOO6Ekf5ZpppdiyRoKiMThuUsxNYyDe9wd1qF0i8mw4JQk2JqKoKs18NFOsy3uStX+
	 DpWjUOzN63/ig8w70sHyu91XHZWuNpay5RxO2FaSkaa5scIi+LaxKZ6Z95wLwO+0Qn
	 /E84ScHi9UORl9Vf4zFBrtpLGN4GoPGc8Q5Nhr/aE826cAlpE2diGxMptfkG6ylri8
	 ulDYv/3cRryvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD68F41EAD;
	Fri,  6 Mar 2026 21:14:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C53C25B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 21:13:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29EEC40ABE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 21:13:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hcjWcxTzX2is for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Mar 2026 21:13:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::133; helo=mail-lf1-x133.google.com;
 envelope-from=advoretsky@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5E7C340088
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E7C340088
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com
 [IPv6:2a00:1450:4864:20::133])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5E7C340088
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 21:13:22 +0000 (UTC)
Received: by mail-lf1-x133.google.com with SMTP id
 2adb3069b0e04-5a0ff30b240so4136909e87.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Mar 2026 13:13:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772831600; x=1773436400;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=kf8fkyYdC+lpqfiu6tiuKMsMUIXPATxKomGIGLejXUY=;
 b=mFtVoQZZ1KGRBGqUvoMSgWwuNJlsaCMK5WYE3lDHkQNFf8ZP00oOiU16CMyYMNxzDl
 O6W+UTJRcUBNsGj4F+0f8WVulxufsIQGyAQpsnJSNlsJpD3mk75G8jVzgzoJPPZkQ6sd
 Vsv8gQdZnBj134ccDzYb9HGsuH7PmZ2q7z6n+Y1NEE1GbF+gbS1BCYWSgMye/BlLhRj1
 ZZI5ANA87ZSPflty9LTuWsAl1w3WgLmpibEUyQIAoF+DpvxvYr8JpQiq4YC0EDVFKGMq
 fT+f9oYO+7557kIgFaVu4wAa6ANQ5YuC4bZwJ+2+1bf0lmMUZwv2pvmkxONKlS8raBd4
 TVDA==
X-Gm-Message-State: AOJu0Ywh8cSfIkeLO46+JNEmVmrsYrClI9inHxmo4cP+1mS1Vjht5D7Q
 diXW1cSiFfl6gUsQq4Thrln7fGWKExUaGSD0Nc9o+6+GpZoVTM4Ah2U/WRnX//HN
X-Gm-Gg: ATEYQzzB0HDs9mn+6eT/i2o/C26SMH1eOzd+6xT2RVEdeieeFOzRA+phapuNIkcguc+
 ltrugSsfI6YXSAfaM2sBUb2ibTw22lr/5x+ullBdx1O9MJTTlMbzGrroxWKxdMV+G4bVq7yFtm8
 6hAyks54P2008c4S5xbvzTOwrKRHZAb007Vnz9XdLANamuWEKqRxipgzDT+oMu7Lr0X/9jEma1D
 m5rsbe6iIy+7REGjZCyV/FjVrcAyQyST/LA68sN7XZ14QYAmSI2hIpiRAdWbteHhD5CAJF96K8p
 6i65NZFTLWezq05DQoWhPXag0etIDpDUdYlE6ie9/9M1YO3g3A+f9+PtiVuI2i9XkQrK0o4OOPJ
 WFMGnj3KcYlzCA7S71yVehrVEC48lHUUaI9DkEecB2awqWXfHM8aZVUgBguQoyJ69uoRILucqLN
 cYVWsg
X-Received: by 2002:a05:6512:3b9d:b0:5a1:2e83:a7f1 with SMTP id
 2adb3069b0e04-5a13ccf293emr1267137e87.23.1772831599490; 
 Fri, 06 Mar 2026 13:13:19 -0800 (PST)
Received: from router-0001 ([2a01:4f9:3080:2e0f::2])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a13d07e0f1sm554433e87.58.2026.03.06.13.13.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2026 13:13:18 -0800 (PST)
From: Alex Dvoretsky <advoretsky@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, stable@vger.kernel.org, kurt@linutronix.de,
 maciej.fijalkowski@intel.com, Alex Dvoretsky <advoretsky@gmail.com>
Date: Fri,  6 Mar 2026 22:13:09 +0100
Message-ID: <20260306211310.1213330-3-advoretsky@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260306211310.1213330-1-advoretsky@gmail.com>
References: <20260306211310.1213330-1-advoretsky@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 06 Mar 2026 21:14:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1772831600; x=1773436400; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kf8fkyYdC+lpqfiu6tiuKMsMUIXPATxKomGIGLejXUY=;
 b=O8H5SWQXa+qSC6zDIAm8/3SUSVtvl/UcvfUBEzF2K/sfum+T/Rrv3Gxi2lRN5bvheR
 rSSeAaSw+sXy/HNt1ubwFMaw9PQtaR9qkAB/SAhDRC64ay4Yqd9yv1RmvoWAjLqskA3u
 mHucsGP/QgsnzKHE2bH7nrosvXa0Kx97WuWxukSgPSd3xPd2vc22u+wLAPKqAxQCFviS
 X2GChvZ7hIMq3ZwN9tSV0ueR/aIJpPdgfxsDxTbfYb2nG8ifmDFDdkGpxejcBbfEzU4q
 57bwiek7rK93uAeE4jgh6F2FNGo3gqYJBZnNi8ZB7cxHecgslFrnialesB+lDAdG7SJq
 tchQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=O8H5SWQX
Subject: [Intel-wired-lan] [PATCH net 2/3] igb: skip reset in
 igb_tx_timeout() during XDP transition
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
X-Rspamd-Queue-Id: 1A2AB227CBE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,linutronix.de,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[advoretsky@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

When igb_xdp_setup() transitions between XDP and non-XDP mode on a
running device, it calls igb_close() followed by igb_open(). During
this window the adapter is down while trans_start still contains the
timestamp from before igb_close(), so the TX watchdog can fire a
spurious timeout.

The resulting schedule_work(&adapter->reset_task) races with the
igb_open() path: the reset task may run while the device is being
brought back up, or immediately after, causing unexpected ring
reinitialisation and register writes.

Fix this by checking __IGB_DOWN at the top of igb_tx_timeout(). A
reset is unnecessary because the device will be fully reinitialised
by the subsequent igb_open().

Fixes: 9cbc948b5a20 ("igb: add XDP support")
Cc: stable@vger.kernel.org
Signed-off-by: Alex Dvoretsky <advoretsky@gmail.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 223a10cae4a9..ddb7ce9e97bf 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6651,6 +6651,10 @@ static void igb_tx_timeout(struct net_device *netdev, unsigned int __always_unus
 	struct igb_adapter *adapter = netdev_priv(netdev);
 	struct e1000_hw *hw = &adapter->hw;
 
+	/* Ignore timeout if the adapter is going down. */
+	if (test_bit(__IGB_DOWN, &adapter->state))
+		return;
+
 	/* Do the reset outside of interrupt context */
 	adapter->tx_timeout_count++;
 
-- 
2.51.0

