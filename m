Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePgwNnE4sGlbhQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 16:27:45 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A03253766
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 16:27:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A730F41C6D;
	Tue, 10 Mar 2026 15:27:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0ViLQGzMyMGN; Tue, 10 Mar 2026 15:27:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C932740306
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773156453;
	bh=VeyuMlBSXCUl2HyhMWtK62gNrN2xqJpTn5I2B2Zc2uk=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8876yaYUdpcENTk/p6eWsRG9PVwj/0L7NX0lH0I3YILEMhHQwuz/X+VkyuTZhVu/t
	 M0RVS/PSHcudS5fjn9k4Gh1kRWmtUP8FxaRIJ1KCthNqap+7q6jOXdiVRE/VJ2Sm8A
	 Dt82967E4Q6qpweGQc5kHiO/gDoZoR8QOlcEO1PIipiK6A3VrtqDPyg3SnnwZffZRn
	 jpDtUAYgUcd7jP2O3jD5Zke6scRB2YdWeGlfyb5HzP6tG+AlicrdJIMD6SEzkcnLqj
	 lIsqpVewBKEnwynvHlfGGBcNILDMTtpBU7ddEMZBH6HQ5RPbNlV1l+A+LBELBwAJOI
	 lIC2WrdBf1K7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C932740306;
	Tue, 10 Mar 2026 15:27:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3575335C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:05:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE91241F18
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:05:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uvXzLJrGPiGz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 12:05:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:bf0:244:244::120; helo=mail.avm.de;
 envelope-from=phahn-oss@avm.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0A17041EAF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A17041EAF
Received: from mail.avm.de (mail.avm.de [IPv6:2001:bf0:244:244::120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0A17041EAF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:05:06 +0000 (UTC)
Received: from [2001:bf0:244:244::71] (helo=mail.avm.de)
 by mail.avm.de with ESMTP (eXpurgate 4.55.2)
 (envelope-from <phahn-oss@avm.de>)
 id 69b006ac-b734-7f0000032729-7f000001c024-1
 for <multiple-recipients>; Tue, 10 Mar 2026 12:55:24 +0100
Received: from mail-auth.avm.de (dovecot-mx-01.avm.de
 [IPv6:2001:bf0:244:244::71]) by mail.avm.de (Postfix) with ESMTPS;
 Tue, 10 Mar 2026 12:55:24 +0100 (CET)
From: Philipp Hahn <phahn-oss@avm.de>
Date: Tue, 10 Mar 2026 12:48:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-b4-is_err_or_null-v1-22-bd63b656022d@avm.de>
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
Cc: Alasdair Kergon <agk@redhat.com>, Mike Snitzer <snitzer@kernel.org>, 
 Mikulas Patocka <mpatocka@redhat.com>, 
 Benjamin Marzinski <bmarzins@redhat.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1995; i=phahn-oss@avm.de;
 h=from:subject:message-id; bh=xBKhBreRFiEpPz9/49OtWlCzYkq81mZihzEqekyK7xA=;
 b=owEBbQGS/pANAwAKATQtBlPRrKzbAcsmYgBpsAYgLcFKxegL/bQqhgTo4RNQJgrnmxL3YCzsA
 NwbsOtNPYeJATMEAAEKAB0WIQQ5bPBtrWDUcDQCppg0LQZT0ays2wUCabAGIAAKCRA0LQZT0ays
 21bACACtmD+JNOZZE2WtYGgZs+OKFUvGXg8BvTcg2nAeuTAfDV15mPSXGDJtr1bOhVuDnL/Nw9l
 YuHe1nCI3Kb5gMl9oJ6QTc/nxqpUehwIiPaszmCzsqUT9Av4+JV9tbiRExsTnWgWp8/ohC7O/t7
 0F2HI97L08/EOhP6er3J/caSpZnOpbWXT+xXd1cfFQmhFO8426W+HbSPnqaYqXoPZvzXs04m+U7
 Y+HhZZm9gUaVM39bOf2O7FpXKP5lXlaxHXla0Syc5xOdqOCZGHEwLXH/1MeFU5JbVnp/DFE01i8
 2gpgUDB/Kr+8ov9qYVC2ZPrR+l2cjmrUojAxw0U8eiSwxKRA
X-Developer-Key: i=phahn-oss@avm.de; a=openpgp;
 fpr=58AF7C2E007CDBE62C59E078F50EFDCF8AD04B1A
X-purgate-ID: 149429::1773143724-71DC2A3D-384367F1/0/0
X-purgate-type: clean
X-purgate-size: 1997
X-purgate-Ad: Categorized by eleven eXpurgate (R) https://www.eleven.de
X-purgate: This mail is considered clean (visit https://www.eleven.de for
 further information)
X-purgate: clean
X-Mailman-Approved-At: Tue, 10 Mar 2026 15:27:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=avm.de; s=mail; 
 t=1773143725; bh=xBKhBreRFiEpPz9/49OtWlCzYkq81mZihzEqekyK7xA=;
 h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
 b=helEnKZUDYmuyC7r9itC+dVARlXrRlYpZWzDAaAXEYc5wN1FHoKQsdSjCaomchjhv
 +41zqDKlH044FWtyvi2VX9TAdQF1rs14U237EegHWJogLxynx4m+2shwi9NDMEzjxe
 k3vCUFrBTw+1/DCUt/wn8qmUGFq+b5Q0TC9ytTvc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=avm.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=avm.de header.i=@avm.de header.a=rsa-sha256
 header.s=mail header.b=helEnKZU
Subject: [Intel-wired-lan] [PATCH 22/61] md: Prefer IS_ERR_OR_NULL over
 manual NULL check
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
X-Rspamd-Queue-Id: 48A03253766
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
 kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-sctp@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-trace-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:ntfs3@lists.linux.dev,m:samba-technical@lists.samba.org,m:sched-ext@lists.linux.dev,m:target-devel@vger.kernel.org,m:tipc-discussion@lists.sourceforge.net,m:v9fs@lists.linux.dev,m:phahn-oss@avm.de,m:agk@redhat.com,m:snitzer@kernel.org,m:mpatocka@redhat.com,m:bmarzins@redhat.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_GT_50(0.00)[58];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[phahn-oss@avm.de,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
check.

Change generated with coccinelle.

To: Alasdair Kergon <agk@redhat.com>
To: Mike Snitzer <snitzer@kernel.org>
To: Mikulas Patocka <mpatocka@redhat.com>
To: Benjamin Marzinski <bmarzins@redhat.com>
Cc: dm-devel@lists.linux.dev
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Philipp Hahn <phahn-oss@avm.de>
---
 drivers/md/dm-cache-metadata.c | 2 +-
 drivers/md/dm-crypt.c          | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/md/dm-cache-metadata.c b/drivers/md/dm-cache-metadata.c
index 57158c02d096ed38759d563bf27e7f1b3fe58ccc..32f7d25b83a181a30a78c663d48f7882cb97f7b5 100644
--- a/drivers/md/dm-cache-metadata.c
+++ b/drivers/md/dm-cache-metadata.c
@@ -1819,7 +1819,7 @@ int dm_cache_metadata_abort(struct dm_cache_metadata *cmd)
 	WRITE_UNLOCK(cmd);
 	dm_block_manager_destroy(old_bm);
 out:
-	if (new_bm && !IS_ERR(new_bm))
+	if (!IS_ERR_OR_NULL(new_bm))
 		dm_block_manager_destroy(new_bm);
 
 	return r;
diff --git a/drivers/md/dm-crypt.c b/drivers/md/dm-crypt.c
index 54823341c9fda46b2d8e13428cbd51f3edf642d5..05eae3d3c7df6baebd0b7a4219f7b6938f6e7f87 100644
--- a/drivers/md/dm-crypt.c
+++ b/drivers/md/dm-crypt.c
@@ -2295,7 +2295,7 @@ static void crypt_free_tfms_aead(struct crypt_config *cc)
 	if (!cc->cipher_tfm.tfms_aead)
 		return;
 
-	if (cc->cipher_tfm.tfms_aead[0] && !IS_ERR(cc->cipher_tfm.tfms_aead[0])) {
+	if (!IS_ERR_OR_NULL(cc->cipher_tfm.tfms_aead[0])) {
 		crypto_free_aead(cc->cipher_tfm.tfms_aead[0]);
 		cc->cipher_tfm.tfms_aead[0] = NULL;
 	}
@@ -2312,7 +2312,7 @@ static void crypt_free_tfms_skcipher(struct crypt_config *cc)
 		return;
 
 	for (i = 0; i < cc->tfms_count; i++)
-		if (cc->cipher_tfm.tfms[i] && !IS_ERR(cc->cipher_tfm.tfms[i])) {
+		if (!IS_ERR_OR_NULL(cc->cipher_tfm.tfms[i])) {
 			crypto_free_skcipher(cc->cipher_tfm.tfms[i]);
 			cc->cipher_tfm.tfms[i] = NULL;
 		}

-- 
2.43.0

