Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77623D35B3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2019 02:24:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1161520334;
	Fri, 11 Oct 2019 00:24:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qZiQIt8MAmF2; Fri, 11 Oct 2019 00:24:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 23911204A4;
	Fri, 11 Oct 2019 00:24:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F1D741BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:24:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ED93A20440
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EtAXCRfye6S1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2019 00:24:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00190b01.pphosted.com (mx0a-00190b01.pphosted.com
 [67.231.149.131])
 by silver.osuosl.org (Postfix) with ESMTPS id 9977D20334
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:24:41 +0000 (UTC)
Received: from pps.filterd (m0050095.ppops.net [127.0.0.1])
 by m0050095.ppops.net-00190b01. (8.16.0.42/8.16.0.42) with SMTP id
 x9B0CD6v008015; Fri, 11 Oct 2019 01:24:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc : subject : date : message-id; s=jan2016.eng;
 bh=wFdYZRiamaVjqjpws51rnT1kMjLwL5HhvsPA+tJ3ddY=;
 b=eygHA4J9F18Wo0IoIaOyoT7p7MrIQQLIyMjxO+p+q92zz87wnfqzsKPgu1atgD8BN90W
 MuPLJwXLg7p5MzEOgjPHZJCzm6dlmyT1VGEBlsmLRRahfJhUHv0gPZ25m1nPwVqAdTfO
 A0b7Le7n4JcfVILHozKtIvRJpfObzIz2fzUmZ0/+9whz4Z1MEnopksUfGaJMEYHrK8P6
 AfWzA1ogqa7Jap0hANvkD3fczdRAqnH+8K61VWwuQ7li/Z+Zt8j+1kc9cIY6sy34W8b+
 tKBhlwG/E98ThZkWX9ZUpq/wEAmb17P0o9OSon/FxdOA3RIXta0IE2fCuU3/yIdYB3uC VA== 
Received: from prod-mail-ppoint3 (prod-mail-ppoint3.akamai.com [96.6.114.86]
 (may be forged))
 by m0050095.ppops.net-00190b01. with ESMTP id 2vejq578ag-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 01:24:36 +0100
Received: from pps.filterd (prod-mail-ppoint3.akamai.com [127.0.0.1])
 by prod-mail-ppoint3.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x9B0Gbkc012098; Thu, 10 Oct 2019 20:24:35 -0400
Received: from prod-mail-relay14.akamai.com ([172.27.17.39])
 by prod-mail-ppoint3.akamai.com with ESMTP id 2veph0x33a-1;
 Thu, 10 Oct 2019 20:24:35 -0400
Received: from bos-lpwg1 (bos-lpwg1.kendall.corp.akamai.com [172.29.171.203])
 by prod-mail-relay14.akamai.com (Postfix) with ESMTP id 519CA80D1A; 
 Fri, 11 Oct 2019 00:24:35 +0000 (GMT)
Received: from johunt by bos-lpwg1 with local (Exim 4.86_2)
 (envelope-from <johunt@akamai.com>)
 id 1iIijw-0001an-GY; Thu, 10 Oct 2019 20:25:04 -0400
From: Josh Hunt <johunt@akamai.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com
Date: Thu, 10 Oct 2019 20:24:59 -0400
Message-Id: <1570753502-6014-1-git-send-email-johunt@akamai.com>
X-Mailer: git-send-email 2.7.4
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-10_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910110000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-10_09:2019-10-10,2019-10-10 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 phishscore=0
 suspectscore=0 priorityscore=1501 bulkscore=0 adultscore=0 mlxlogscore=999
 spamscore=0 clxscore=1015 impostorscore=0 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1908290000
 definitions=main-1910110000
Subject: [Intel-wired-lan] [PATCH v2 0/3] igb, ixgbe,
 i40e UDP segmentation offload support
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
Cc: willemb@google.com, alexander.h.duyck@linux.intel.com,
 Josh Hunt <johunt@akamai.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Alexander Duyck posted a series in 2018 proposing adding UDP segmentation
offload support to ixgbe and ixgbevf, but those patches were never
accepted:

https://lore.kernel.org/netdev/20180504003556.4769.11407.stgit@localhost.localdomain/

This series is a repost of his ixgbe patch along with a similar
change to the igb and i40e drivers. Testing using the udpgso_bench_tx
benchmark shows a noticeable performance improvement with these changes
applied.

I've shared the benchmark script I've used to generate the #s in this mail:
https://lore.kernel.org/netdev/0e0e706c-4ce9-c27a-af55-339b4eb6d524@akamai.com/T/#mfe4c35c57a3860cda5306b63f61068f837242ee5

v2 changes:
 * Added Alex's suggested-by tag to ixgbe patch
 * Checking for gso_type, suggested by Sridhar
 * Fixed bug in ixgbe patch where I accidentally left the old type_tucmd
   set to TCP
 * Updated perf #s below
   * includes changes above
   * fixed bad config on my igb machine
   * added chip used for testing next to driver name

All #s below were run with:
udpgso_bench_tx -C 1 -4 -D 172.25.43.133 -z -l 30 -S 0 -u -s $pkt_size

igb (i210)::
SW GSO (ethtool -K eth0 tx-udp-segmentation off):
$pkt_size	kB/s(sar)	MB/s	Calls/s	Msg/s	CPU	MB2CPU
========================================================================
1472		120167.13	114	81278	81278	16.24	7.01
2944		120166.83	114	40641	40641	12.82	8.89
5888		120166.42	114	20320	20320	10.14	11.24
11776		120166.43	114	10160	10160	8.55	13.33
23552		120167.24	114	5080	5080	7.76	14.69
47104		120166.83	114	2540	2540	7.07	16.12
61824		120167.08	114	1935	1935	7.07	16.12

HW GSO offload (ethtool -K eth0 tx-udp-segmentation on):
$pkt_size	kB/s(sar)	MB/s	Calls/s	Msg/s	CPU	MB2CPU
========================================================================
1472		120167.05	114	81276	81276	16.13	7.06
2944		120166.94	114	40640	40640	8.66	13.16
5888		120166.84	114	20320	20320	5.34	21.34
11776		120166.84	114	10160	10160	3.34	34.13
23552		120167.25	114	5080	5080	2.55	44.70
47104		120149.30	113	2539	2539	2.14	52.80
61824		120165.41	114	1935	1935	2.04	55.88

ixgbe (82599ES)::
SW GSO:
$pkt_size	kB/s(sar)	MB/s	Calls/s	Msg/s	CPU	MB2CPU
========================================================================
1472		1043972.83	990	706122	706122	100	9.90
2944		1201623.17	1140	406367	406367	95.97	11.87
5888		1201629.46	1140	203184	203184	56	20.35
11776		1201631.38	1140	101590	101590	42.72	26.68
23552		1201633.94	1140	50796	50796	36.31	31.39
47104		1201631.05	1140	25397	25397	33.91	33.61
61824		1201629.96	1140	19350	19350	33.38	34.15

HW GSO Offload:
$pkt_size	kB/s(sar)	MB/s	Calls/s	Msg/s	CPU	MB2CPU
========================================================================
1472		1053393.41	999	712679	712679	100	9.99
2944		1201631.19	1140	406357	406357	57.92	19.68
5888		1201622.51	1140	203178	203178	30.66	37.18
11776		1201626.60	1140	101590	101590	16.89	67.49
23552		1201617.19	1140	50795	50795	10.11	112.75
47104		1200218.72	1138	25368	25368	6.86	165.88
61824		1201619.66	1140	19350	19350	5.38	211.89

i40e (x710)::
SW GSO:
$pkt_size	kB/s(sar)	MB/s	Calls/s	Msg/s	CPU	MB2CPU
========================================================================
1472		642718.15	609	434585	434585	100	6.09
2944		957988.80	909	324029	324029	100	9.09
5888		1199207.69	1138	202845	202845	81.51	13.96
11776		1200767.60	1139	101517	101517	63.93	17.81
23552		1201197.22	1140	50794	50794	59.14	19.27
47104		1201410.91	1139	25393	25393	57.15	19.93
61824		1201609.48	1140	19350	19350	55.12	20.68

HW GSO offload:
$pkt_size	kB/s(sar)	MB/s	Calls/s	Msg/s	CPU	MB2CPU
========================================================================
1472		666626.15	632	450920	450920	100	6.32
2944		1200831.63	1139	406093	406093	89.68	12.70
5888		1201603.35	1140	203178	203178	56.38	20.21
11776		1201597.29	1140	101588	101588	36.9	30.89
23552		1201596.98	1140	50794	50794	24.23	47.04
47104		1201491.67	1139	25394	25394	17.14	66.45
61824		1201598.88	1140	19350	19350	15.11	75.44

Josh Hunt (3):
  igb: Add UDP segmentation offload support
  ixgbe: Add UDP segmentation offload support
  i40e: Add UDP segmentation offload support

 drivers/net/ethernet/intel/i40e/i40e_main.c   |  1 +
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 12 +++++++++---
 drivers/net/ethernet/intel/igb/e1000_82575.h  |  1 +
 drivers/net/ethernet/intel/igb/igb_main.c     | 23 +++++++++++++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 24 ++++++++++++++++++------
 5 files changed, 46 insertions(+), 15 deletions(-)

-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
