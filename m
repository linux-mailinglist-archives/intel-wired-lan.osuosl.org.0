Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YDWMBnkmGWq9rAgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 07:39:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E44C5FD681
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 07:39:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D799482BC3;
	Fri, 29 May 2026 05:39:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yoRi3ZPeT6Km; Fri, 29 May 2026 05:39:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E31782BC8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780033141;
	bh=JRw5xcrSjOiERzxs4QrGB7FXuKGRgXx5pHS4OGkIPuU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Gu8suY3zwrotng+cRm+wlza20F9Zgpr4DSvaODcSN6RKwHhf0e9OZK9JIZ19POSax
	 zzAp02ox4N9o+otnX3QExYslCPO4Kkrs1nqIKpogKyz9a8MGk5RGHD25yaUfd1ven+
	 vDwbF6BIpvgwSHd25t8Vw5ZJ1hISS7t8AHCKakzWUeBMRK236aZRHKnIaop8NusRQu
	 Xz78s3i9jAAe9eAts5LNA8lIegy+4Jmi83iVtwIpvLWD2Cl8QBXAoiXd7fNaCTsotY
	 6CYYYZ8CMzsPbV/V36sHDIDKmuclqfgyY6sNZy6NZv2lFYzROhxM3MsuuVvgo7TZzB
	 K0u2D+vDNwpNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E31782BC8;
	Fri, 29 May 2026 05:39:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 591BE288
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 05:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A43741DE3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 05:38:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FRDR40XCW9oz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 05:38:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.173.142.173;
 helo=smtp-usa2.onexmail.com; envelope-from=zhaojinming@uniontech.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D478D41DD6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D478D41DD6
Received: from smtp-usa2.onexmail.com (smtp-usa2.onexmail.com [35.173.142.173])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D478D41DD6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 05:38:57 +0000 (UTC)
X-QQ-mid: zesmtpsz5t1780033072t7ae2a378
X-QQ-Originating-IP: d7NrgzXasJ3gpHIgPC/KZgg6qQgMWztRLLTXZx+3Lzg=
Received: from localhost.localdomain ( [124.126.19.250])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Fri, 29 May 2026 13:37:48 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 13989401940268503956
EX-QQ-RecipientCnt: 11
From: ZhaoJinming <zhaojinming@uniontech.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, ZhaoJinming <zhaojinming@uniontech.com>
Date: Fri, 29 May 2026 13:37:32 +0800
Message-Id: <20260529053733.764996-2-zhaojinming@uniontech.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20260529053733.764996-1-zhaojinming@uniontech.com>
References: <20260528171202.2659491-3-horms@kernel.org>
 <20260529053733.764996-1-zhaojinming@uniontech.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:uniontech.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Od6jZKO+x2euDiO64vibcm/bW3Lls+AQRe+wsjxQnGKkxoK0bb7Jy6KD
 zkNQcN9cwRVvQKH5a3Cm9YbeaJMWdsh3bZffdynTzs4rOa/gWUu6e1cC7v5d4PUkIXvgLxe
 /4w/WfrXYiIf01TbjpvwFKPg5z7gJqxY/dPEUH19zG3Bp/9+f4qLL/iPwiYzc151rUvJ2+Z
 yjfifx33/ToQa3hMyrB12vdLwbXtNUmuCsXe4/9W6Wkl/FaD2saBNhmu9l5fdKZHGFrNJsh
 k3mEsPigXeJe/36K1RGh33CgwOFQLOv40gLYnX3LMP13Sn0XfVKgbZ1Vt9MkghcumPk4TC3
 i1hwZseCyvyooxiz/V/BUBfAvLj10e1qrzW0pfMvm4XmtVCoUCu7zn5THilV13fegfzFtmY
 eBQI27vhAh6yq5BV8u8XwvM+yVHgELIcfW+gPTov/RUa2LY/H48UPMvH37luMEHEHtjN0NW
 8y+4djVDZDfIRQnBpALCBT+gg1XspcfZBEVYaUukYANKfJFr9bmRnlFh+0Rl1NQsaJYJHze
 7pCrEfhSnorpcAdWJ6iVjPaZaXYKeVrQMoMpD7ZivD/F007gXYftB6MykWOjNCQaOX3jpBC
 Ho+eIzgCm+ir1CH8fgJcxOl86QUZqXFjq67je48jHiPmv+Fz/spvuy1s6RqoCx9zSKOrmaM
 tUTpBOXLpdsJfUZXQzcqLEt89HgDAtC38vVfXWQc0Rkzfzt6cW0bZDr3aes3/oBQhLyVRiv
 jUMax7UjaTcDciMlbdZdLk62LFTTAgi/wmPG2YSPyQTyDwvh00IG/pgmkZjUeeL4HCq2kuf
 vgN1Ko5R2613r0y46oGShTGYwa3bMCRfg8kDgDS3rSNH9tFfGxDGviJqhw3Sb2jG7Btcnj7
 zNUkfiOvCTguwIJc/PBSjJZYzf3lOeTGiojv5LDvhQMaJb56RUQWWFqelFTVURjp6yYm9z+
 PRMfd5+nx9BdyERPWCrytNv58GSv1t/itFCrIrCSbpdVvleIIcPXys9CGGvellW/cF2lcwu
 pBDV1Az1IBWuG6NCXtG7rFYlQtFwybp9g3M++n0FPubyaOBxWWJ4jcKINYOy0=
X-QQ-XMRINFO: OD9hHCdaPRBwH5bRRRw8tsiH4UAatJqXfg==
X-QQ-RECHKSPAM: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=uniontech.com; s=onoh2408; t=1780033092;
 bh=JRw5xcrSjOiERzxs4QrGB7FXuKGRgXx5pHS4OGkIPuU=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=Rt3pxMowEKiQ/aZwjHjamuJAOKgsBr2Dym1dsg0XnxtqN7KBKwmviByMFrkpWasXJ
 kgS3iwluzXDpsOBK41czE09M9+9omSPjQsBKBLBPKKYPEAmW7Jxg744t2AwyCvHeib
 wbJWrjd0HAGhuHNctZOpDlLenlhilyTy3jl96gHI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=uniontech.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=uniontech.com header.i=@uniontech.com
 header.a=rsa-sha256 header.s=onoh2408 header.b=Rt3pxMow
Subject: [Intel-wired-lan] [PATCH net v2 1/2] ice: dpll: set pointers to
 NULL after kfree in ice_dpll_deinit_info
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[uniontech.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[zhaojinming@uniontech.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:zhaojinming@uniontech.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[uniontech.com:mid,uniontech.com:email,osuosl.org:dkim,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[zhaojinming@uniontech.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 3E44C5FD681
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ice_dpll_deinit_info() calls kfree() on several pf->dplls fields
(inputs, outputs, eec.input_prio, pps.input_prio) but does not set
the pointers to NULL afterward. This leaves dangling pointers in the
pf->dplls structure.

While not currently exploitable through existing code paths, this is
unsafe because:

1. If ice_dpll_init_info() is called again after a deinit (e.g. during
   driver recovery), and a subsequent allocation within init fails, the
   error path will jump to deinit_info and call ice_dpll_deinit_info()
   again. Since some pointers still hold the old freed addresses, this
   would result in a double-free.

2. Any future code that checks these pointers before use or after free
   would be unprotected against use-after-free.

Follow the common kernel convention of setting pointers to NULL after
kfree() so that:
- kfree(NULL) is a safe no-op, preventing double-free
- NULL checks on these pointers become meaningful

This is a preparatory fix for a subsequent patch that routes additional
error paths in ice_dpll_init_info() to the deinit_info label.

Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
Signed-off-by: ZhaoJinming <zhaojinming@uniontech.com>
---
 drivers/net/ethernet/intel/ice/ice_dpll.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index 892bc7c2e28b..99bb308255cc 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -4247,9 +4247,13 @@ ice_dpll_init_pins_info(struct ice_pf *pf, enum ice_dpll_pin_type pin_type)
 static void ice_dpll_deinit_info(struct ice_pf *pf)
 {
 	kfree(pf->dplls.inputs);
+	pf->dplls.inputs = NULL;
 	kfree(pf->dplls.outputs);
+	pf->dplls.outputs = NULL;
 	kfree(pf->dplls.eec.input_prio);
+	pf->dplls.eec.input_prio = NULL;
 	kfree(pf->dplls.pps.input_prio);
+	pf->dplls.pps.input_prio = NULL;
 }
 
 /**
-- 
2.20.1

