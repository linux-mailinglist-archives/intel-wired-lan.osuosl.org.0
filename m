Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E38FBA68EF3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Mar 2025 15:24:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 565B760E57;
	Wed, 19 Mar 2025 14:24:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dzcL9HRsyIns; Wed, 19 Mar 2025 14:24:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7197060E25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742394244;
	bh=FXf6tL/+fXL9ZakOV01DQToLMo02isnVavTFvix+Ba0=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=z9rzzsTuXF5ZGmEDO0b+R1pQygCW7BbMp3hO98m/PQuq6VKIkt2qyb+tJlioBjmEh
	 9aUN4/S4rn10QH8nWWZVUNGdcLEXJUGK2nUbCCZqnt9s3xQsqf3pNcvMPySNDgVQxo
	 d3nRYxbNxLHWOjcWs/qLM4otpPAUoDWsg/3Q1Smf30hM9P4a1DEU4veQ/exX6+Q3kZ
	 qM3rryEUjVFJNnDkIYqu2YRdU/MlWWKbtHBdyE03Bv57STD2qHdEKLegl5HCk8UD2O
	 4rIsg1Xp8wDOIhgTuDTj/KzNz3TvbSXAt2ysIJI/Ci9hk+9mEAZFeN9WrzksoYJIIh
	 c7V6EPZCPIEYg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7197060E25;
	Wed, 19 Mar 2025 14:24:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5DB5716E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 14:24:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4189481757
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 14:24:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QDmQDspOI5uJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 14:24:01 +0000 (UTC)
X-Greylist: delayed 303 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 19 Mar 2025 14:24:00 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 12CEB81678
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12CEB81678
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.136.64.228;
 helo=mta-64-228.siemens.flowmailer.net;
 envelope-from=fm-1328595-202503191418546e9fda5123a1c1faeb-setogt@rts-flowmailer.siemens.com;
 receiver=<UNKNOWN> 
Received: from mta-64-228.siemens.flowmailer.net
 (mta-64-228.siemens.flowmailer.net [185.136.64.228])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 12CEB81678
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Mar 2025 14:24:00 +0000 (UTC)
Received: by mta-64-228.siemens.flowmailer.net with ESMTPSA id
 202503191418546e9fda5123a1c1faeb
 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Mar 2025 15:18:54 +0100
From: Zdenek Bouska <zdenek.bouska@siemens.com>
Date: Wed, 19 Mar 2025 15:18:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250319-igc-fix-tx-zero-copy-drops-v1-1-d90bc63a4dc4@siemens.com>
X-B4-Tracking: v=1; b=H4sIAEfS2mcC/x3MQQrCMBBG4auUWftDpokgXkVclHSss0nCJEhs6
 d0NLj94vIOqmEql+3SQyUer5jTAl4nie0mbQNdhmt18dZ4ddIt4aUfr2MUyYi5frJZLBcew3Dg
 Edt7TGBSTUf7nD0rSkKQ3ep7nD3oYTEp2AAAA
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, 
 Jesper Dangaard Brouer <hawk@kernel.org>, 
 John Fastabend <john.fastabend@gmail.com>, 
 Andre Guedes <andre.guedes@intel.com>, 
 Vedang Patel <vedang.patel@intel.com>, 
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 Jithu Joseph <jithu.joseph@intel.com>, 
 Song Yoong Siang <yoong.siang.song@intel.com>, 
 Florian Bezdeka <florian.bezdeka@siemens.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, bpf@vger.kernel.org, 
 Zdenek Bouska <zdenek.bouska@siemens.com>
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1328595:519-21489:flowmailer
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; s=fm1; 
 d=siemens.com; i=zdenek.bouska@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=FXf6tL/+fXL9ZakOV01DQToLMo02isnVavTFvix+Ba0=;
 b=EOUE4a5rtVTenrtqYNTdHbRZYiix4F6UPZZaUfLC9KR+J+VW2I4JzXjU0fhpb3yc/pJhgG
 BfiHg7QNxOvU4sCp6rMCoRiFHaqd/cegjSrLxQ4kYctXFLuVMoS8ZehW3owXNSoKqnhSUWb3
 n+6w6dNm+gWOqA5Qo/JQzZV67sl0ws2zlPIVdnHkeYElI+FtaOTtrBiLI9uzd2ETDBq2VzZK
 aBju6jIeizNfSdVWRfLzp37P0X+O4Id9B8dA2qry6Pm3V0WZcCb+/IQqXuo20IRkwTZoqsls
 083OVNl2TAjQ3WDz91CS8mdaccSShswMP3BA4vtZZ+gmMnCl5pUPknZw==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=zdenek.bouska@siemens.com
 header.a=rsa-sha256 header.s=fm1 header.b=EOUE4a5r
Subject: [Intel-wired-lan] [PATCH net-next] igc: Fix TX drops in XDP ZC
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

Fixes TX frame drops in AF_XDP zero copy mode when budget < 4.
xsk_tx_peek_desc() consumed TX frame and it was ignored because of
low budget. Not even AF_XDP completion was done for dropped frames.

It can be reproduced on i226 by sending 100000x 60 B frames with
launch time set to minimal IPG (672 ns between starts of frames)
on 1Gbit/s. Always 1026 frames are not sent and are missing a
completion.

Fixes: 9acf59a752d4c ("igc: Enable TX via AF_XDP zero-copy")
Signed-off-by: Zdenek Bouska <zdenek.bouska@siemens.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 472f009630c9..f2e0a30a3497 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3042,7 +3042,7 @@ static void igc_xdp_xmit_zc(struct igc_ring *ring)
 	 * descriptors. Therefore, to be safe, we always ensure we have at least
 	 * 4 descriptors available.
 	 */
-	while (xsk_tx_peek_desc(pool, &xdp_desc) && budget >= 4) {
+	while (budget >= 4 && xsk_tx_peek_desc(pool, &xdp_desc)) {
 		struct igc_metadata_request meta_req;
 		struct xsk_tx_metadata *meta = NULL;
 		struct igc_tx_buffer *bi;

---
base-commit: 8ef890df4031121a94407c84659125cbccd3fdbe
change-id: 20250310-igc-fix-tx-zero-copy-drops-1c4a81441033

Best regards,
-- 
Zdenek Bouska

Siemens, s.r.o.
Foundational Technologies

