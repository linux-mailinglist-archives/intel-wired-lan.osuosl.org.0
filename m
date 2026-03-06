Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEG9HK5Dq2nJbgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 22:14:22 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D934227CB7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Mar 2026 22:14:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1ADB883EFA;
	Fri,  6 Mar 2026 21:14:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P5iQ0FG5y0Ll; Fri,  6 Mar 2026 21:14:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92B1383F01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772831659;
	bh=cf/zNSP2mIwbDjec2q9Q1Mo/k5XXLlz6S1V2sE7Q5Sc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XRT1d/5rJqdi3e4+j9X/yNffNB9LTyPGNEeT3EVAa8xlRcQXsYn+hNYvCE+VRONeh
	 SUD/JeMJ9rzr7yvApspCjisY3AFUvpE4l+m9T34qQu+S9zaJXQqpmb0z5A2d8Uk+TR
	 jh7tUUxOl075u0jOrsnLYwidiQZeSTLsskDl7e+cocKSvJSf8WhkuOzVkHOyGGkPS1
	 rFuXJ5DU0t0IdkOPpIpWIWzgtOTVzYgAeFVlAorkgQDkROX8Hw8C5qrO+UoennAkFD
	 fFhMJQkdzW/iP7zvjtP/ffVZ1Z6RznNoMt93yDzh5O5ymC81wkRc/weQwWzwpzp8qd
	 sHRxZBcEXG/tQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92B1383F01;
	Fri,  6 Mar 2026 21:14:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 043D6223
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 21:13:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E88E941EA3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 21:13:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sVv-nONz2UKy for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Mar 2026 21:13:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::130; helo=mail-lf1-x130.google.com;
 envelope-from=advoretsky@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4096A41E7D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4096A41E7D
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com
 [IPv6:2a00:1450:4864:20::130])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4096A41E7D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Mar 2026 21:13:18 +0000 (UTC)
Received: by mail-lf1-x130.google.com with SMTP id
 2adb3069b0e04-5a12f6871b2so3383554e87.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Mar 2026 13:13:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772831595; x=1773436395;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cf/zNSP2mIwbDjec2q9Q1Mo/k5XXLlz6S1V2sE7Q5Sc=;
 b=hucPTclfevl/DHIBO/dZJfQ+JBusYKK2f9KgckA7uSlsJK74dHtClC32RsthBPoE4f
 JR3ht9xRN9SkDI/UKIopK2Sku0ifOaCLXnXenANMySP7MAOSSEnLCGoqyHZrsaZZGaUm
 1Kh1Lr3os4kXuI0Phe918doBUx78531DhJFyNT4J7x+eoEqPiUyeRNTifYDRaijXI3pd
 zG1+915H5ve4hzaPsMNeSw3GcV1nI2fgBmJj6ms0xytMCN/Fd2SQ7W7xGVdWkwG4CWQh
 tpWIZZT1RxDCbgq9UBrhb780fmnLNF9MKjDq/nHUO7EUBtNiMe2BSYtbgBa13R8n3kDm
 XSew==
X-Gm-Message-State: AOJu0Ywq07DD78aRwKG1XCximlKLgCzsSfRUkkPE7sJYHGMZ8JTwEOXu
 eBqukKqLgAMNvR/b/2FwBlpCqnyMtB8BO8TZ+c8ffNoMdsTnujycEgVw7a959tV2
X-Gm-Gg: ATEYQzyXPHkPeKaCOohPh0hllURqXRXzkdRw/72d3wu4GMUWn/c9opZ/LhxqiyLQnSU
 S6Vr4gWwMPBhpziwmq8WdRkw0sBoq/poCSflnFNzb07pY5e4PD0XUbvE168CcGRHmGdagLKC3QD
 9vec3w9VqFh+EH/4ZJcFVcKUf/SphHv3rvylwyyGtOixY4bnR57+AOlRsp1pafFSa5es1qbHiCE
 0kCnXZlVkpdmyHUdoo/W/I2jPYk7aQpSHgYJ6Vf9MUD+UgnMcsy9xBpH238lWi4iL82C7GfBQ6B
 1FairW5uFRVssEyREM1wTRbjwpGC+YOBVLbvRHn27OHZbPOoMIUk8JqGaSAAadei1ocuzOoQabR
 3ID272VuKj1d6ACJsDB/RjF8tds8snS6jseCDgKP0CO9ohjjS1jpyycVHvY9WuGyrT+YsvTA2tq
 1qItcj
X-Received: by 2002:a05:6512:1315:b0:5a1:3c21:37f with SMTP id
 2adb3069b0e04-5a13cab3728mr1533744e87.7.1772831595025; 
 Fri, 06 Mar 2026 13:13:15 -0800 (PST)
Received: from router-0001 ([2a01:4f9:3080:2e0f::2])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a13d07e0f1sm554433e87.58.2026.03.06.13.13.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2026 13:13:13 -0800 (PST)
From: Alex Dvoretsky <advoretsky@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, stable@vger.kernel.org, kurt@linutronix.de,
 maciej.fijalkowski@intel.com, Alex Dvoretsky <advoretsky@gmail.com>
Date: Fri,  6 Mar 2026 22:13:07 +0100
Message-ID: <20260306211310.1213330-1-advoretsky@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 06 Mar 2026 21:14:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1772831595; x=1773436395; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=cf/zNSP2mIwbDjec2q9Q1Mo/k5XXLlz6S1V2sE7Q5Sc=;
 b=c8cIYA9vBbCv8yDpq1egeMrVsLWTxLOz4Hn+TloRSvoG+m56bps3ApsMBtfOwBpm1i
 zIkyvwiijF3A+83RlngmfTdq3ftj+Idx4Zk3L6A+U37uMnFruxlx1tefw4GzoNOm4jJe
 Ebnyt9C50T/LjQULUIV352S9K9cQ9KzrwQdCKMCvJHTQa8OGaO2b4fwZz2sz0KYyIyjP
 yuvdA+GGYPMxjPpeE+q63TcPsOG4QbKOJ0VPL3WSOVhTV3oQSPg7tnrRSU/snfvrKkGz
 4+FoyQZ71rSvLZnHS6HHJ1ihwrsegP1EDVWdU524X/XwGtsJkL/MHQuQIGWk3OFKSgW9
 pw3g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=c8cIYA9v
Subject: [Intel-wired-lan] [PATCH net 0/3] igb: fix TX stall during XDP
 teardown with AF_XDP zero-copy
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
X-Rspamd-Queue-Id: 7D934227CB7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.29 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,linutronix.de,gmail.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[advoretsky@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

When an AF_XDP zero-copy application exits while an XDP program remains
attached, igb can permanently stall a TX queue associated with the
AF_XDP socket. The interface stops forwarding traffic and typically
requires a driver reload to recover.

Reproducer:

  1. Attach an XDP program to igb
  2. Run an AF_XDP zero-copy application
  3. kill -9 the application

The TX watchdog eventually fires and the interface becomes
unresponsive. Reproduced on Intel I210 with Linux 6.17.

igb_clean_rx_irq_zc() lacks a __IGB_DOWN guard. When the AF_XDP process
exits the XSK pool is destroyed, but NAPI continues polling. The
function then repeatedly returns the full budget, which prevents
napi_complete_done() from completing. As a result igb_down() blocks in
napi_synchronize() and TX completions stop being processed, eventually
triggering the TX watchdog.

Patch 1 adds a __IGB_DOWN guard to igb_clean_rx_irq_zc() to break the
infinite NAPI poll loop.

Patch 2 prevents igb_tx_timeout() from scheduling reset_task during XDP
transitions when the device is shutting down.

Patch 3 adds synchronization in igb_xdp_setup() to ensure that pending
ndo_xsk_wakeup() calls complete before the teardown continues, and
refreshes trans_start after igb_open() to prevent false TX timeouts.

igc handles a similar stale trans_start situation via
txq_trans_cond_update() (commit 86ea56c5b0c7). This patch adds
equivalent protection for igb during XDP transitions.

Tested on Intel I210:

  - AF_XDP ZC app exit with XDP attached
  - XDP detach while AF_XDP running
  - repeated XDP attach/detach cycles

Alex Dvoretsky (3):
  igb: check __IGB_DOWN in igb_clean_rx_irq_zc()
  igb: skip reset in igb_tx_timeout() during XDP transition
  igb: add XDP transition guards in igb_xdp_setup()

 drivers/net/ethernet/intel/igb/igb_main.c | 15 +++++++++++++++
 drivers/net/ethernet/intel/igb/igb_xsk.c  |  3 +++
 2 files changed, 18 insertions(+)

--
2.51.0

