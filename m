Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 564038A6F0D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Apr 2024 16:54:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34E23405B0;
	Tue, 16 Apr 2024 14:54:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vbcyRqcawqwM; Tue, 16 Apr 2024 14:54:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 909DB402BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713279258;
	bh=Cdex+RLb2jzqXfAekeGWlDlcKGNNQhFdd260BFjkXVo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=d+e4wDYHlynNMxuGUz8CpiAz7WLRDrpY1TXlQdgbvgfEF4H5q8KAOxBCLPpIPxqIe
	 nw++Ry/Cfmx6OYlDiiBW3S741/bFTuoqS0Dj8vra4k9mJ5ZlpiHCWEpDBv6+3F5tkk
	 I+o8ovNcEcR5QaVkFog6L3AVYON6Sa8IG6Ro5SmAZsAceWDKqEEAAn2uM6fpxl60Px
	 WubBaCh+4ehOLMa0KzWLhCGaj95pQHZeB0SzxyNxZJ31G2tHIMdp08YvsmbZvJpH18
	 cQd/WK87Zkus1EM62rzIlPu3z4jvOTF0aF3xqAFuHPI4vwRMCqD2RfALbXf61Ej069
	 d7iFsfbc53pLw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 909DB402BF;
	Tue, 16 Apr 2024 14:54:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC3C41BF977
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A8B0240BA7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:54:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 33MlHPQ2n7ex for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Apr 2024 14:54:15 +0000 (UTC)
X-Greylist: delayed 602 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 16 Apr 2024 14:54:13 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9F25640383
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F25640383
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.104.135.124;
 helo=mail1.fiberby.net; envelope-from=ast@fiberby.net; receiver=<UNKNOWN> 
Received: from mail1.fiberby.net (mail1.fiberby.net [193.104.135.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F25640383
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Apr 2024 14:54:13 +0000 (UTC)
Received: from x201s (193-104-135-243.ip4.fiberby.net [193.104.135.243])
 by mail1.fiberby.net (Postfix) with ESMTPSA id 71B41600A2;
 Tue, 16 Apr 2024 14:43:50 +0000 (UTC)
Received: by x201s (Postfix, from userid 1000)
 id B5812202498; Tue, 16 Apr 2024 14:43:20 +0000 (UTC)
From: =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 16 Apr 2024 14:43:19 +0000
Message-ID: <20240416144320.15300-1-ast@fiberby.net>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=fiberby.net; s=202008; t=1713278649;
 bh=1ISri2bYvVsZAxWaG9HkNxGsuBog0gqAtEuAMx45XWs=;
 h=From:To:Cc:Subject:Date:From;
 b=cJ77AM88UOdtiL1hxDlCM/LDyadeS5Fy4mTUBJZ0bVwdC0BAa5qi/0Tepp86grPka
 VTRhnsMsOkx71RdasvKCZM4gyoNMJVcquFGND2lIX1sECz9YsgAxq91W+LNFDN7jpV
 T8PrgAtr0OEqOhdfxLDOVS5hd4dMAcvazMFESrpKpxN9JOU55v1weh310C/1bB1fGh
 dLhaIXut+mYSpUmSMiZsEoJOFkDKuBDItY4UR/dLgNZXa6SvS7G/2bXSAK/Kw/bQIx
 kCg5VHbl7GxQmUjkw0Vnq/EtO/5bV+eYWh8ubbCNjv5hIkJekGPac9stRnzO6F9wnu
 p5u0BFCA7Ztpg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fiberby.net
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=fiberby.net header.i=@fiberby.net header.a=rsa-sha256
 header.s=202008 header.b=cJ77AM88
Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: flower: validate control
 flags
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This driver currently doesn't support any control flags.

Use flow_rule_has_control_flags() to check for control flags,
such as can be set through `tc flower ... ip_flags frag`.

In case any control flags are masked, flow_rule_has_control_flags()
sets a NL extended error message, and we return -EOPNOTSUPP.

Only compile-tested.

Signed-off-by: Asbjørn Sloth Tønnesen <ast@fiberby.net>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 0bdcdea0be3e..e219f757820d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -8643,6 +8643,10 @@ static int i40e_parse_cls_flower(struct i40e_vsi *vsi,
 
 		flow_rule_match_control(rule, &match);
 		addr_type = match.key->addr_type;
+
+		if (flow_rule_has_control_flags(match.mask->flags,
+						f->common.extack))
+			return -EOPNOTSUPP;
 	}
 
 	if (addr_type == FLOW_DISSECTOR_KEY_IPV4_ADDRS) {
-- 
2.43.0

