Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GF3DA0QBvGmurAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 14:59:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5EB2CC4F6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 14:59:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB99184234;
	Thu, 19 Mar 2026 13:59:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0vT9VGhO1Lgp; Thu, 19 Mar 2026 13:59:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44FD184239
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773928769;
	bh=FM5u2uHSz/VZ9Qz362czB/Bn/2senFQYOZTR+Pv+J5M=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BgpqC+INwqTU2LwTt8lIz/BJIbr81Pb/C8iMkd2B12QNeqLVU6O313rMyytlzuogk
	 48SMj2LNpGOYBa55275GC9k+H2rkPeHL/gsuuRkuAJcSOW062X6U9qJbAYMTYeRR9D
	 cJHlrRN3naMTr4oP2ucSmOQld4iD7YI7m6AtTX7xJiweeyD8qoVImxVk10O2xHVs/D
	 AeAh3deBNnDR0HY/d4xdF79smRx2BLRnHSbllDvK0yyCky6kFJS+ZAswcSAQY4jXw4
	 Z4ZQZQ/iDS3D1m3tVNMgpyKA3fPyem+hu0jNrjYe5JcYlWn15WzpoPKNOHXYWhmii6
	 Z933Zh+q3975w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44FD184239;
	Thu, 19 Mar 2026 13:59:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7ADF91AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 13:59:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6C7FB84237
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 13:59:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RDmd0w-iAIdG for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 13:59:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42e; helo=mail-pf1-x42e.google.com;
 envelope-from=lgs201920130244@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C25CB84234
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C25CB84234
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C25CB84234
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 13:59:26 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id
 d2e1a72fcca58-82a73593410so412194b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 06:59:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773928766; x=1774533566;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FM5u2uHSz/VZ9Qz362czB/Bn/2senFQYOZTR+Pv+J5M=;
 b=WbbVmhIo+qHAFsGac0KHNyCS76BPqOZYpTo4v773AbwKEMkTPBW38D5M4r1R8n+LvU
 bdqTIBj0TQsmRvg6L92sEu6N1H6QmBagKnBQ77RLsA86VFXF/5AHlx19j90RGLBq/l9f
 1/BaEoUqCWfeZzF+PuQtYorZVjqeWzw1dYcYpAkUsxKtp03tVro0Ob15wam03xznpe0v
 /a2b/MIRIw5ZRjeVvV71sWLYKD+EVVyRQIitaJ2EErUV40qlWQvh3tw+PQrU/rC1cMaf
 AEx0LFTBI8J0Ilafc7EOdt8QsTi7Vue6rZBlM9xuYAPmyyKM81OYWwGPfSPw6euzPaHV
 vnWg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVCtvdgHZ/yycS+FEZbNYxNWNhHPPLaI5zq08J9zni6zbxsw5ZdOZPXSfY+n1bLOVpVoRBlbeRuMAjiTG6jv90=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxJ9JpGAYbsQDkSOltCS1maa6VTW+V4xZuE3AKmUgm2nYcyUAnZ
 J0go0ko7LxMZFfxTRw5NZ1pHQVNW+V/4hKiywOYUo45v40GbPHtazLHs
X-Gm-Gg: ATEYQzz0J5Gm3S18A2/HVUiCKh00vkg86rTtn5d88Fwu/mCAAs7yTG94g7muZUG6FO5
 x8I0S5xOiWL+3dF/Xa6L0QBJr+eQzd+OyzN+VVGMZG9Jgf9sAL4OJW58PRAV0OFnEBfHORQMuQ/
 Y9LFi6J4AYlGARPVlVZdZEofzJxCkuLcmae5SJHse0QmMrZFFFekel0jPz6GrzBJULav8qpgPQx
 uB6GC107mTcAtQK8tDgBrqARnc9jrTomPAhKsI0VylBGd98GniDy2VIRrSSkUMj4vsK5hBq5pQA
 U+56dwSPTPPEezD9ViejTAYf83kwi1cXllf9bzJm5hHoBxpWg0jqHIoiV0+miv6Pcx6hLNxOtfE
 vtveszES/fFFBDKrDVF4B55sJpd/Ao2zZc8WTA19urYLq9G3XTykxwszCK3c67GkLsm3O/acaDG
 GlTexB0TMas3IVqQX7AaJF
X-Received: by 2002:a05:6a00:3319:b0:82a:6255:247b with SMTP id
 d2e1a72fcca58-82a6ae78489mr6376248b3a.62.1773928765908; 
 Thu, 19 Mar 2026 06:59:25 -0700 (PDT)
Received: from lgs.. ([223.80.110.53]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-82a6b56df09sm6237700b3a.21.2026.03.19.06.59.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2026 06:59:25 -0700 (PDT)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Piotr Raczynski <piotr.raczynski@intel.com>,
 Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Guangshuo Li <lgs201920130244@gmail.com>, stable@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 19 Mar 2026 21:58:59 +0800
Message-ID: <20260319135859.690041-1-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773928766; x=1774533566; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=FM5u2uHSz/VZ9Qz362czB/Bn/2senFQYOZTR+Pv+J5M=;
 b=e0QgKZElbk3Ed5pybrFvXe36f6OlO6yhchW09lZfuJ6jnJG0n9JLDTsD+x4yWocJdA
 Y9g+d5LKtVWzwOhke/42aFstqtfshr133bdwpDULpexRgMX+aOlgRfUmSiCtR8jMmkfk
 fah4xReyhVQNQsgKpiPaWZNN/5FazD6w1ZpBo0uiNS9wWWTNpQ9R3EjQrJezN1A2XNDY
 KCoWPeun6UBG6VNN7AOmYRLrcm1pMyceKZ2DimJq+qUWGkVOKy6WNltZGRMN1gcpcsY0
 YUbVeLQTInj4iL2vc+Ok15QLT9r8ZLafeDbaGflVXp33Xd0gov2kgyztTgZ0FtUEFt+5
 Gr2Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=e0QgKZEl
Subject: [Intel-wired-lan] [PATCH v2] ice: fix double free in
 ice_sf_eth_activate() error path
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:michal.swiatkowski@linux.intel.com,m:piotr.raczynski@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lgs201920130244@gmail.com,m:stable@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[lgs201920130244@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,intel.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lgs201920130244@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.980];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5E5EB2CC4F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When auxiliary_device_add() fails, ice_sf_eth_activate() jumps to
aux_dev_uninit and calls auxiliary_device_uninit(&sf_dev->adev).

The device release callback ice_sf_dev_release() frees sf_dev, but
the current error path falls through to sf_dev_free and calls
kfree(sf_dev) again, causing a double free.

Keep kfree(sf_dev) for the auxiliary_device_init() failure path, but
avoid falling through to sf_dev_free after auxiliary_device_uninit().

Fixes: 13acc5c4cdbe ("ice: subfunction activation and base devlink ops")
Cc: stable@vger.kernel.org
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
---
v2:
  - replace goto xa_erase with return err after auxiliary_device_uninit()
  - avoid xa_erase() in the auxiliary_device_uninit() path since it is already
    done in ice_sf_dev_release()

 drivers/net/ethernet/intel/ice/ice_sf_eth.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index 1a2c94375ca7..f7266d036815 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -305,6 +305,8 @@ ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
 
 aux_dev_uninit:
 	auxiliary_device_uninit(&sf_dev->adev);
+	return err;
+
 sf_dev_free:
 	kfree(sf_dev);
 xa_erase:
-- 
2.43.0

