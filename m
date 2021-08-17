Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE76B3EED27
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 15:16:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7A75A40540;
	Tue, 17 Aug 2021 13:16:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wqj9HDCODJsp; Tue, 17 Aug 2021 13:16:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E82940495;
	Tue, 17 Aug 2021 13:16:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D92791BF30E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 13:16:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C634B40153
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 13:16:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RQsU62cKGXLr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Aug 2021 13:16:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E4A8A40018
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629206184;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=tY2DkNn1KWzfNwhYq4xPDtbKiq0jqQ/cJFXAjPSHimo=;
 b=To9yEl0A9jiaN4vBRz4EmUYZCpBAb9q2BKJhqIMgUPjwalHpW4Ajls55GApcFyX+nVu50b
 zTf1LI7/2i25jT4bS92Z792hZ6kwYZNnJIHkt3osu4knEZVYXLAPymx7TKsl/m3YWlAq+Q
 d3GOScGyc/dT8C9MagiZc3mzlGse77M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-193-1610L80ROLGT7-rbfTFT7A-1; Tue, 17 Aug 2021 09:16:22 -0400
X-MC-Unique: 1610L80ROLGT7-rbfTFT7A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D0948100960A;
 Tue, 17 Aug 2021 13:16:21 +0000 (UTC)
Received: from calimero.vinschen.de (ovpn-112-10.ams2.redhat.com
 [10.36.112.10])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A32C960916;
 Tue, 17 Aug 2021 13:16:21 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id 3459CA80DE8; Tue, 17 Aug 2021 15:16:20 +0200 (CEST)
From: Corinna Vinschen <vinschen@redhat.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 17 Aug 2021 15:16:20 +0200
Message-Id: <20210817131620.566614-1-vinschen@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: [Intel-wired-lan] [PATCH] igc: fix tunnel offloading
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
Cc: netdev@vger.kernel.org, pabeni@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paolo Abeni <pabeni@redhat.com>

Checking tunnel offloading, it turns out that offloading doesn't work
as expected.  The following script allows to reproduce the issue.
Call it as `testscript DEVICE LOCALIP REMOTEIP NETMASK'

=== SNIP ===
if [ $# -ne 4 ]
then
  echo "Usage $0 DEVICE LOCALIP REMOTEIP NETMASK"
  exit 1
fi
DEVICE="$1"
LOCAL_ADDRESS="$2"
REMOTE_ADDRESS="$3"
NWMASK="$4"
echo "Driver: $(ethtool -i ${DEVICE} | awk '/^driver:/{print $2}') "
ethtool -k "${DEVICE}" | grep tx-udp
echo
echo "Set up NIC and tunnel..."
ip addr add "${LOCAL_ADDRESS}/${NWMASK}" dev "${DEVICE}"
ip link set "${DEVICE}" up
sleep 2
ip link add vxlan1 type vxlan id 42 \
		   remote "${REMOTE_ADDRESS}" \
		   local "${LOCAL_ADDRESS}" \
		   dstport 0 \
		   dev "${DEVICE}"
ip addr add fc00::1/64 dev vxlan1
ip link set vxlan1 up
sleep 2
rm -f vxlan.pcap
echo "Running tcpdump and iperf3..."
( nohup tcpdump -i any -w vxlan.pcap >/dev/null 2>&1 ) &
sleep 2
iperf3 -c fc00::2 >/dev/null
pkill tcpdump
echo
echo -n "Max. Paket Size: "
tcpdump -r vxlan.pcap -nnle 2>/dev/null \
| grep "${LOCAL_ADDRESS}.*> ${REMOTE_ADDRESS}.*OTV" \
| awk '{print $8}' | awk -F ':' '{print $1}' \
| sort -n | tail -1
echo
ip link del vxlan1
ip addr del ${LOCAL_ADDRESS}/${NWMASK} dev "${DEVICE}"
=== SNAP ===

The expected outcome is

  Max. Paket Size: 64904

This is what you see on igb, the code igc has been taken from.
However, on igc the output is

  Max. Paket Size: 1516

so the GSO aggregate packets are segmented by the kernel before calling
igc_xmit_frame.  Inside the subsequent call to igc_tso, the check for
skb_is_gso(skb) fails and the function returns prematurely.

It turns out that this occurs because the feature flags aren't set
entirely correctly in igc_probe.  In contrast to the original code
from igb_probe, igc_probe neglects to set the flags required to allow
tunnel offloading.

Setting the same flags as igb fixes the issue on igc.

Signed-off-by: Paolo Abeni <pabeni@redhat.com>
Tested-by: Corinna Vinschen <vinschen@redhat.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index b7aab35c1132..79efb3e6a03e 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6264,7 +6264,9 @@ static int igc_probe(struct pci_dev *pdev,
 	if (pci_using_dac)
 		netdev->features |= NETIF_F_HIGHDMA;
 
-	netdev->vlan_features |= netdev->features;
+	netdev->vlan_features |= netdev->features | NETIF_F_TSO_MANGLEID;
+	netdev->mpls_features |= NETIF_F_HW_CSUM;
+	netdev->hw_enc_features |= netdev->vlan_features;
 
 	/* MTU range: 68 - 9216 */
 	netdev->min_mtu = ETH_MIN_MTU;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
