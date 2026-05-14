Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPdeBlsZBWrOSQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 02:37:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E726253C61C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 May 2026 02:37:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2ACD140BAD;
	Thu, 14 May 2026 00:37:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o9-glAd342e6; Thu, 14 May 2026 00:37:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3AC9040BB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778719063;
	bh=Zyw5S7e80tZjT6K7eiv0YgjyNq4sB8EyFKPPSt3XNeM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=lfE6Wv64HZjKL/ZJAkTUSC1kf/ZDEwBT3Fs+aGYFmwA6vQdazJ19WGaLcHCO6FRMm
	 8iQSAM7ZXEMcUwwyaBP08cH9A5o9FTcUpoaQk0cZwalw2xc0l//EK9BW3E/Vr8IS/d
	 /m39LMp78vuskwkGeIY8WF5gCFDaa3R7Bch2G2Ildm+RURjPXrExTx1p2bZQdkTOf2
	 0ymTqqiIz3/UlewX1V5jNT35rllV/VkeyhDD+6HG7fsAdbDyDyyjHXGFFeiA/dsqKB
	 yfvjMU3K3xT9T/c2lAcbrPhHCwURa2Bsm+r/n/rqA86Nw2SBYGvvc9UMeOZMPXUjAD
	 49mVbsV2qjIzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AC9040BB5;
	Thu, 14 May 2026 00:37:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id F37C2223
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 00:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D93B640BB1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 00:37:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M0nV_VAEXTwa for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 May 2026 00:37:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=202.36.163.20;
 helo=gate2.alliedtelesis.co.nz; envelope-from=chrisp@alliedtelesis.co.nz;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A665B40BAD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A665B40BAD
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [202.36.163.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A665B40BAD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 May 2026 00:37:38 +0000 (UTC)
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 5B93E2C0613;
 Thu, 14 May 2026 12:37:35 +1200 (NZST)
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by
 svr-chch-seg1.atlnz.lc with Trustwave SEG (v8, 2, 6, 11305)
 id <B6a05194f0000>; Thu, 14 May 2026 12:37:35 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.12])
 by pat.atlnz.lc (Postfix) with ESMTP id 1AC4F13ED2A;
 Thu, 14 May 2026 12:37:35 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 18C5790022D; Thu, 14 May 2026 12:37:35 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, aleksander.lobakin@intel.com
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Blair Steven <blair.steven@alliedtelesis.co.nz>,
 Carl Smith <carl.smith@alliedtelesis.co.nz>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>
Date: Thu, 14 May 2026 12:37:33 +1200
Message-ID: <20260514003733.1718771-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=Es1xrjcA c=1 sm=1 tr=0 ts=6a05194f
 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=NGcC8JguVDcA:10 a=ngL9nt1HdWMmO1MQNKYA:9
 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=alliedtelesis.co.nz; 
 s=mail181024; t=1778719055;
 bh=Zyw5S7e80tZjT6K7eiv0YgjyNq4sB8EyFKPPSt3XNeM=;
 h=From:To:Cc:Subject:Date:From;
 b=zniNwZfDHR/nrVZt9jQhmY7DIDirrmseqwSMZck0bCbP7cBrSMWaxhXa0wxGZxWcH
 QnAPjEnbRu5iXXkj0iBxwxGLqIws8zqJDQ/T8JahPa7jkgwDU7En64FeUId8SaWdzq
 SXWSsAem3p8kMMfxeQlpbp9HZzCvJSPLAJGAVZ0uK1Y8fUcFqFfhGsJ64Xvqtkr8Nr
 8N6u9xhz7AadEuU1lE4kdvNN+YHrkmbvZfKsWtfWckj7eoZ3XTH2ePUiQJviCiQ5to
 T3q6HyyaW2dJCirKvaPr3EprSsDzEb8Rkfg1vAed8HgaHs6IxYOvbgFXP/c/e2lHce
 rlVnAaYiArh2A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=alliedtelesis.co.nz
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz
 header.a=rsa-sha256 header.s=mail181024 header.b=zniNwZfD
Subject: [Intel-wired-lan] [PATCH net-next] i40e: Avoid repeating RX filter
 warning
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
X-Rspamd-Queue-Id: E726253C61C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[alliedtelesis.co.nz : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:blair.steven@alliedtelesis.co.nz,m:carl.smith@alliedtelesis.co.nz,m:chris.packham@alliedtelesis.co.nz,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,alliedtelesis.co.nz:email,alliedtelesis.co.nz:mid];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[chris.packham@alliedtelesis.co.nz,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[chris.packham@alliedtelesis.co.nz,intel-wired-lan-bounces@osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
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

Resend with net-next tag

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

