Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C63C22FEEB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jul 2020 03:32:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2957C87DA6;
	Tue, 28 Jul 2020 01:32:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IKOj9Z+jnse5; Tue, 28 Jul 2020 01:32:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BED5787D75;
	Tue, 28 Jul 2020 01:32:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0F6AC1BF33F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 01:32:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 04C26883FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 01:32:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Edv+m847R43v for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jul 2020 01:32:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CC2DD883D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jul 2020 01:32:17 +0000 (UTC)
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id CA36E1FD25BA70411706;
 Tue, 28 Jul 2020 09:32:13 +0800 (CST)
Received: from kernelci-master.huawei.com (10.175.101.6) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.487.0; Tue, 28 Jul 2020 09:32:03 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Hulk Robot <hulkci@huawei.com>, Jeff Kirsher
 <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Date: Tue, 28 Jul 2020 09:41:53 +0800
Message-ID: <20200728014153.44834-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.101.6]
X-CFilter-Loop: Reflected
Subject: [Intel-wired-lan] [PATCH net-next] ice: mark PM functions as
 __maybe_unused
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
Cc: intel-wired-lan@lists.osuosl.org, Wei Yongjun <weiyongjun1@huawei.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In certain configurations without power management support, the
following warnings happen:

drivers/net/ethernet/intel/ice/ice_main.c:4214:12: warning:
 'ice_resume' defined but not used [-Wunused-function]
 4214 | static int ice_resume(struct device *dev)
      |            ^~~~~~~~~~
drivers/net/ethernet/intel/ice/ice_main.c:4150:12: warning:
 'ice_suspend' defined but not used [-Wunused-function]
 4150 | static int ice_suspend(struct device *dev)
      |            ^~~~~~~~~~~

Mark these functions as __maybe_unused to make it clear to the
compiler that this is going to happen based on the configuration,
which is the standard for these types of functions.

Fixes: 769c500dcc1e ("ice: Add advanced power mgmt for WoL")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d6981ba34b27..6edf018c4940 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4147,7 +4147,7 @@ static int ice_reinit_interrupt_scheme(struct ice_pf *pf)
  * Power Management callback to quiesce the device and prepare
  * for D3 transition.
  */
-static int ice_suspend(struct device *dev)
+static int __maybe_unused ice_suspend(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct ice_pf *pf;
@@ -4211,7 +4211,7 @@ static int ice_suspend(struct device *dev)
  * ice_resume - PM callback for waking up from D3
  * @dev: generic device information structure
  */
-static int ice_resume(struct device *dev)
+static int __maybe_unused ice_resume(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	enum ice_reset_req reset_type;

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
