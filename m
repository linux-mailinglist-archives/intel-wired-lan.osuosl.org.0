Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBIcMFU4sGkKhQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 16:27:17 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 589FC253645
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 16:27:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6E6A40306;
	Tue, 10 Mar 2026 15:27:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ThTLjUqnY-Uw; Tue, 10 Mar 2026 15:27:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C07114040B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773156430;
	bh=+mEgDc6W6dmx2m0hBCrDKrYdyaZdhiJE+p4uCpJlqL8=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YO7OEdmhOMYMNRJt17fbUfVSZdA5daxj+lFREq5Hr002TuKLLcI8zGflizyNs5I7Y
	 7ss+aG00MMlmXFSXZxYqiGemiT63Wwfo469J2xjZ8mb5JhJzDfdas9d862dfTyxNdt
	 3gbcjYbetaJUE0rCUUX+CBxO1YeXli4Ck/IVHD8ygsILD9gAS2i2gIw7tJVn0LsHQj
	 sCFs8HQxpTLBiBrBJl6bj4C5VehPzod/2exhvbEDuRWP6KLfoO3+qjxu8bn9ns5dAo
	 86FR3whJeqRvgHgt/zy231OxWTnn0DyrsZiNK9VzVu23EBCjjet66OmJguCkx8QgB0
	 daa5KiWkuRnQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C07114040B;
	Tue, 10 Mar 2026 15:27:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C14EB2C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 02262406A4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:01:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ryDPrTYH3dVx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 12:01:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.42.244.119;
 helo=mail.avm.de; envelope-from=phahn-oss@avm.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 466BB403A1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 466BB403A1
Received: from mail.avm.de (mail.avm.de [212.42.244.119])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 466BB403A1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:01:19 +0000 (UTC)
Received: from [212.42.244.71] (helo=mail.avm.de)
 by mail.avm.de with ESMTP (eXpurgate 4.55.2)
 (envelope-from <phahn-oss@avm.de>)
 id 69b006ae-2367-7f0000032729-7f000001c98c-1
 for <multiple-recipients>; Tue, 10 Mar 2026 12:55:26 +0100
Received: from mail-auth.avm.de (dovecot-mx-01.avm.de [212.42.244.71])
 by mail.avm.de (Postfix) with ESMTPS;
 Tue, 10 Mar 2026 12:55:26 +0100 (CET)
From: Philipp Hahn <phahn-oss@avm.de>
Date: Tue, 10 Mar 2026 12:49:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-b4-is_err_or_null-v1-34-bd63b656022d@avm.de>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
In-Reply-To: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
To: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com, 
 bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr, 
 dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org, 
 gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org, 
 intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev, 
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-block@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
 linux-btrfs@vger.kernel.org, linux-cifs@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-erofs@lists.ozlabs.org, 
 linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-hyperv@vger.kernel.org, 
 linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-leds@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-mips@vger.kernel.org, linux-mm@kvack.org, 
 linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org, 
 linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
 linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org, 
 linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
 ntfs3@lists.linux.dev, samba-technical@lists.samba.org, 
 sched-ext@lists.linux.dev, target-devel@vger.kernel.org, 
 tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev, 
 Philipp Hahn <phahn-oss@avm.de>
Cc: Russell King <linux@armlinux.org.uk>
X-Developer-Signature: v=1; a=openpgp-sha256; l=925; i=phahn-oss@avm.de;
 h=from:subject:message-id; bh=MCi9bfMt/yjRjpkUd1ZhwbiaE2CmX7FKcN3LCeZC+s8=;
 b=owEBbQGS/pANAwAKATQtBlPRrKzbAcsmYgBpsAZJPXZg3WsXcrZtjOff8m1jvG6yKXz3axEvS
 kboSQL/SpuJATMEAAEKAB0WIQQ5bPBtrWDUcDQCppg0LQZT0ays2wUCabAGSQAKCRA0LQZT0ays
 2zfACACzyLECzgi3MrIMlJkcwSfYhn2m+PRIL8f9uOY3XlWqWmweHlYuZj3OMlVlJtGjvYSQaMR
 9+D2tmynuqJf309fIXDWVkgzjy8866w+a/UJmSXv/T4izax84D3f8LghtIzFi7mZ97slccnBaIH
 bYp2esZnYrGMRYLzsh/aOQvmQdhErxNZysqZJWPMzNnDfK6XoXYg2wPfHrL2waLBmLBd1ruAh8/
 q/1mTUtEwi8tnMzF9vKrDxFY8VrHUkQh/DKxepIobrtB7u/NL1zHZyVzUjIKrp3fP30IB0/fbFP
 nBUcDJnBx61wdRtaxbBVJBgZihX6FfH11PRkPQUNc/WVeaiP
X-Developer-Key: i=phahn-oss@avm.de; a=openpgp;
 fpr=58AF7C2E007CDBE62C59E078F50EFDCF8AD04B1A
X-purgate-ID: 149429::1773143726-8AC99E1F-6B772227/0/0
X-purgate-type: clean
X-purgate-size: 927
X-purgate-Ad: Categorized by eleven eXpurgate (R) https://www.eleven.de
X-purgate: This mail is considered clean (visit https://www.eleven.de for
 further information)
X-purgate: clean
X-Mailman-Approved-At: Tue, 10 Mar 2026 15:27:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=avm.de; s=mail; 
 t=1773143726; bh=MCi9bfMt/yjRjpkUd1ZhwbiaE2CmX7FKcN3LCeZC+s8=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=PKx4gVlkKTdBK4hC8DhkZHv6XjY3aXLFzpRRf+9yfpJ7sETH73wJIPUWVun5ApODc
 fB1HpEzfhSmPsza3W/UlEsW+FK27FdFsyHgYe+IbnAc85JpgiLO0UqynRTi7RRWY3c
 Qcjq/1RWaavgSPFWfIRpI/rqChIvo10IblUQ9PGA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=avm.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256
 header.s=mail header.b=PKx4gVlk
Subject: [Intel-wired-lan] [PATCH 34/61] arch/arm: Prefer IS_ERR_OR_NULL
 over manual NULL check
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
X-Rspamd-Queue-Id: 589FC253645
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[avm.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[phahn-oss@avm.de,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:amd-gfx@lists.freedesktop.org,m:apparmor@lists.ubuntu.com,m:bpf@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:cocci@inria.fr,m:dm-devel@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:gfs2@lists.linux.dev,m:intel-gfx@lists.freedesktop.org,m:iommu@lists.linux.dev,m:kvm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-block@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-btrfs@vger.kernel.org,m:linux-cifs@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-erofs@lists.ozlabs.org,m:linux-ext4@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-hyperv@vger.kernel.org,m:linux-input@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mips@vger.kernel.org,m:linux-mm@kvack.org,m:linux-modules@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:linux-nfs@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-phy@lists.infradead.org,m:linux-pm@vger.
 kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-sctp@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-trace-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:ntfs3@lists.linux.dev,m:samba-technical@lists.samba.org,m:sched-ext@lists.linux.dev,m:target-devel@vger.kernel.org,m:tipc-discussion@lists.sourceforge.net,m:v9fs@lists.linux.dev,m:phahn-oss@avm.de,m:linux@armlinux.org.uk,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[55];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phahn-oss@avm.de,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
check.

Change generated with coccinelle.

To: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Philipp Hahn <phahn-oss@avm.de>
---
 arch/arm/common/bL_switcher.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/common/bL_switcher.c b/arch/arm/common/bL_switcher.c
index d1e82a318e3b22bf6f54e9a8d5366ddc7a6e44ca..46cbb5caf9f17a22a7c42e4254cb68c6cdebc4e4 100644
--- a/arch/arm/common/bL_switcher.c
+++ b/arch/arm/common/bL_switcher.c
@@ -628,7 +628,7 @@ static void bL_switcher_disable(void)
 		t = &bL_threads[cpu];
 		task = t->task;
 		t->task = NULL;
-		if (!task || IS_ERR(task))
+		if (IS_ERR_OR_NULL(task))
 			continue;
 		kthread_stop(task);
 		/* no more switch may happen on this CPU at this point */

-- 
2.43.0

