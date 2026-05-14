Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGhWHRgTBWpoSAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 02:11:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A5753C434
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 02:11:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C81D814C3;
	Thu, 14 May 2026 00:10:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pGUZhvl37IAY; Thu, 14 May 2026 00:10:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D14EC814C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778717458;
	bh=XSoiNOSqRK5xwY5RdOy67y6sVw9Et2wfcOv6CmJq/6k=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=XOgJdEefnAiRPdYt6TvHKwov96Camlgp5Yp8LTN/T6dp06lSdIUEeJL2ovD6w4yfn
	 XOJnWT0FyrTY4+rBoTsND1A7vV7EmTBsxK5bNqY44saeX7d1vhkwsEyZv+S71gEDsB
	 IIElDfPAKip+gBN/ZGU+z6EaPq05hhvjREdlspfes1l3aOiUEmN80IM5c4j4+d2rtr
	 ZbYEp1eoYL4YhJLAoN+VNZI5jFgmVqCdXSq2g6ncbrjUJtEtUJeWtmSGBGHDRQImuM
	 ESWYOGBuzKBuMO1L0YqNKbjg6pyKVfjFsA/YjKGPAlmJloJUCZZAJBYXq4rIThraxW
	 eP95PZNtc7hMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D14EC814C6;
	Thu, 14 May 2026 00:10:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5E97936F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 00:10:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3BE3A60AB1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 00:10:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7TslD0WMmXy1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 00:10:56 +0000 (UTC)
X-Greylist: delayed 468 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 14 May 2026 00:10:55 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9D0B160AB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D0B160AB0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.36.163.20;
 helo=gate2.alliedtelesis.co.nz; envelope-from=chrisp@alliedtelesis.co.nz;
 receiver=<UNKNOWN> 
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [202.36.163.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9D0B160AB0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 00:10:54 +0000 (UTC)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 83C5E2C0613;
 Thu, 14 May 2026 12:03:00 +1200 (NZST)
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by
 svr-chch-seg1.atlnz.lc with Trustwave SEG (v8, 2, 6, 11305)
 id <B6a0511340000>; Thu, 14 May 2026 12:03:00 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.12])
 by pat.atlnz.lc (Postfix) with ESMTP id 4F7FF13ED2A;
 Thu, 14 May 2026 12:03:00 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 4D97A90022E; Thu, 14 May 2026 12:03:00 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, aleksander.lobakin@intel.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Blair Steven <blair.steven@alliedtelesis.co.nz>,
 Carl Smith <carl.smith@alliedtelesis.co.nz>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>
Date: Thu, 14 May 2026 12:02:58 +1200
Message-ID: <20260514000258.1704618-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=Es1xrjcA c=1 sm=1 tr=0 ts=6a051134
 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=NGcC8JguVDcA:10 a=ngL9nt1HdWMmO1MQNKYA:9
 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=alliedtelesis.co.nz; 
 s=mail181024; t=1778716980;
 bh=XSoiNOSqRK5xwY5RdOy67y6sVw9Et2wfcOv6CmJq/6k=;
 h=From:To:Cc:Subject:Date:From;
 b=uBLw5Gt+rqvJbJrm8kMCNXWyIZAXmwZYV+VqHTpFv46P6HtA55pQkJTFfa45piVnF
 QWKyUp+6L8wmDStMY/s0V3mzsfCoJ0dvYveuRn3NgLH43j7LGy5nX0QnP/nKw5lKMm
 95CE4vJZH+zUdbH8QV5aGfinc/BO3h8JeWf/Pq5c/ot14AVomSworc4g574tBuje5d
 DMQEakplO3WZXfa0FLFEDqzDZmnPwniyVfDRXu8oJ0Qrjum6ViaqbT+vcwG33d98EP
 TnTBEJsrbjhe+Ofuuu4Pgud+GUVnUHziQ+xzIxVOrqASm45m7O219tJCDnVAWSxWnb
 N/uYQreCt4AKw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=alliedtelesis.co.nz
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz
 header.a=rsa-sha256 header.s=mail181024 header.b=uBLw5Gt+
Subject: [Intel-wired-lan] [PATCH] i40e: Avoid repeating RX filter warning
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
X-Rspamd-Queue-Id: C3A5753C434
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[alliedtelesis.co.nz : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine,sampled_out];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[chris.packham@alliedtelesis.co.nz,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:blair.steven@alliedtelesis.co.nz,m:carl.smith@alliedtelesis.co.nz,m:chris.packham@alliedtelesis.co.nz,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alliedtelesis.co.nz:email,alliedtelesis.co.nz:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[chris.packham@alliedtelesis.co.nz,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[11]
X-Rspamd-Action: no action

When the i40e runs out of space for RX filters the driver switches to
promiscuous mode and warns that it has done so. In scenarios with a
large number of these filters this can generate a lot of warnings. For
example:

  $ dmesg -c > /dev/null
  $ ip link add dev br0 type bridge vlan_filtering 1 vlan_default_pvid 1
  $ ip link set dev eth7 master br0
  $ bridge vlan add vid 1 dev eth7 pvid untagged self
  $ bridge vlan add vid 2-4094 dev eth7 tagged
  $ dmesg
  [   25.601705] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing ove=
rflow promiscuous on PF
  [   25.601833] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing ove=
rflow promiscuous on PF
  [   25.601961] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing ove=
rflow promiscuous on PF
  [   25.602088] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing ove=
rflow promiscuous on PF
  [   25.602216] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing ove=
rflow promiscuous on PF
  [   25.602344] i40e 0000:01:00.1: Error LIBIE_AQ_RC_ENOSPC, forcing ove=
rflow promiscuous on PF
  ...

Use test_and_set_bit() so that the warning is only issued when the
driver enables promiscuous mode and not on the addition of subsequent RX
filters.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/et=
hernet/intel/i40e/i40e_main.c
index 926d001b2150..8741990b5a5e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2408,10 +2408,11 @@ void i40e_aqc_add_filters(struct i40e_vsi *vsi, c=
onst char *vsi_name,
=20
 	if (fcnt !=3D num_add) {
 		if (vsi->type =3D=3D I40E_VSI_MAIN) {
-			set_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
-			dev_warn(&vsi->back->pdev->dev,
-				 "Error %s adding RX filters on %s, promiscuous mode forced on\n",
-				 libie_aq_str(aq_status), vsi_name);
+			if (!test_and_set_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state)) {
+				dev_warn(&vsi->back->pdev->dev,
+					 "Error %s adding RX filters on %s, promiscuous mode forced on\n",
+					 libie_aq_str(aq_status), vsi_name);
+			}
 		} else if (vsi->type =3D=3D I40E_VSI_SRIOV ||
 			   vsi->type =3D=3D I40E_VSI_VMDQ1 ||
 			   vsi->type =3D=3D I40E_VSI_VMDQ2) {
@@ -2461,10 +2462,11 @@ i40e_aqc_broadcast_filter(struct i40e_vsi *vsi, c=
onst char *vsi_name,
 	}
=20
 	if (aq_ret) {
-		set_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
-		dev_warn(&vsi->back->pdev->dev,
-			 "Error %s, forcing overflow promiscuous on %s\n",
-			 libie_aq_str(hw->aq.asq_last_status), vsi_name);
+		if (!test_and_set_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state)) {
+			dev_warn(&vsi->back->pdev->dev,
+				 "Error %s, forcing overflow promiscuous on %s\n",
+				 libie_aq_str(hw->aq.asq_last_status), vsi_name);
+		}
 	}
=20
 	return aq_ret;
--=20
2.54.0

