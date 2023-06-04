Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F59B722AF4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 17:25:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2CA682212;
	Mon,  5 Jun 2023 15:25:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2CA682212
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685978744;
	bh=o7MxcxBCAiQ61qIyDfbBL9WCehhv5qrVhWyddwgKxaw=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mDOPGtwWctaGfkrmRR/v+ARKM8chjKaxwmTH0Fp9iXwVd6iFf7bnSVMwiJzmMcIpZ
	 HgJf14xfNHo31tgDP1TvK6KY844nmgH8+v7hpDB1hr7e3FX62/jx/tTKys0Drc+TuR
	 9CIxkbKJfBt9jca0xoM9NW0LV7VXFaTYjPM/TAwGBSq7rhzXhoBnNFFGudZWDgVY3E
	 dSrtpZ1H1jjkkukhI2f+wq04H7H6rGGVEyWayg5sIeQRhlwkwPXNW9Iy9bDGdPUKmO
	 v67l9Y0p9h11JrDxJ4+w7sfWfgUv0ttMUJ3U0AMRfjcOHv/3vpgRVUdvpjT+OIcHXk
	 tKnqMAG0U77xw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c3mjk0KLlqhM; Mon,  5 Jun 2023 15:25:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DF78821DA;
	Mon,  5 Jun 2023 15:25:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DF78821DA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A7D2D1BF2C0
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 02:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7F0CD83C92
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 02:54:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F0CD83C92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rcLKrzsVt3eK for <intel-wired-lan@lists.osuosl.org>;
 Sun,  4 Jun 2023 02:54:18 +0000 (UTC)
X-Greylist: delayed 00:07:26 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D2D1783C91
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D2D1783C91
 for <intel-wired-lan@lists.osuosl.org>; Sun,  4 Jun 2023 02:54:17 +0000 (UTC)
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 56FF718FCCE;
 Sat,  3 Jun 2023 22:46:48 -0400 (EDT)
 (envelope-from tdavies@darkphysics.net)
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 4D04D18FCCD;
 Sat,  3 Jun 2023 22:46:48 -0400 (EDT)
 (envelope-from tdavies@darkphysics.net)
Received: from oatmeal.darkphysics (unknown [76.146.178.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 020BD18FCCC;
 Sat,  3 Jun 2023 22:46:46 -0400 (EDT)
 (envelope-from tdavies@darkphysics.net)
Date: Sat, 3 Jun 2023 19:46:40 -0700
From: Tree Davies <tdavies@darkphysics.net>
To: anthony.l.nguyen@intel.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com
Message-ID: <ZHv7EDzikZPikoRh@oatmeal.darkphysics>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ELWD20BX7LFhUz03"
Content-Disposition: inline
X-Pobox-Relay-ID: 0CB3580A-0282-11EE-BF0C-307A8E0A682E-45285927!pb-smtp2.pobox.com
X-Mailman-Approved-At: Mon, 05 Jun 2023 15:25:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com;
 h=date:from
 :to:cc:subject:message-id:mime-version:content-type; s=sasl; bh=
 dqDBRzC7tcn7+DMkBVjjohLM8iy8N4hgg2tVjJuNb/4=; b=yhGJ8/xEZG7kopHr
 kdZBOQwNVvbFb4XSF9hvBLKevM/nZFg0X4K6TNE9d5DBQSlhqMOs049rhjr3TuoJ
 VRGFfzgNAh9wbckxGccfzEMV+MbJGQjIot+Hl9utM/SIkmtI+ftQwwl8qEDyseOG
 wq+yCSbZhCs6X4X4G8XFV/3ji8M=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed;
 d=darkphysics.net; 
 h=date:from:to:cc:subject:message-id:mime-version:content-type;
 s=2019-09.pbsmtp; bh=dqDBRzC7tcn7+DMkBVjjohLM8iy8N4hgg2tVjJuNb/4=;
 b=ZZypp/ISH1Lee9Io0GliZs/9oNn9OO4oO1KaewKaKbWb1t5snNrbEc0neN/Z3xCYsFFCXefpYcG7X+qkNyYhyZxPbAKdz9IYuIKcQhg+EtuCBalXExvj38XOJTyeH8NcT3FvcLT+t63wnUbPm0zIc2Atjya9YxEc5/Z92FnBZY8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=pobox.com header.i=@pobox.com
 header.a=rsa-sha256 header.s=sasl header.b=yhGJ8/xE; 
 dkim=temperror header.d=darkphysics.net header.i=@darkphysics.net
 header.a=rsa-sha256 header.s=2019-09.pbsmtp header.b=ZZypp/IS
Subject: [Intel-wired-lan] [Patch] net/e1000: Fix extern warnings
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
Cc: tdavies@darkphysics.net, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--ELWD20BX7LFhUz03
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


--ELWD20BX7LFhUz03
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-net-e1000-Fix-extern-warnings.patch"

From 407d0e4641d67118c954d36cc829c35300669fc8 Mon Sep 17 00:00:00 2001
From: Tree Davies <tdavies@darkphysics.net>
Date: Sat, 3 Jun 2023 19:02:06 -0700
Subject: [PATCH] net/e1000: Fix extern warnings

This patch fixes 11 checkpatch.pl warnings of type:
WARNING: externs should be avoided in .c files

Signed-off-by: Tree Davies <tdavies@darkphysics.net>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index da6e303ad99b..44f1bfba8a1a 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -63,14 +63,6 @@ static const struct pci_device_id e1000_pci_tbl[] = {
 
 MODULE_DEVICE_TABLE(pci, e1000_pci_tbl);
 
-int e1000_up(struct e1000_adapter *adapter);
-void e1000_down(struct e1000_adapter *adapter);
-void e1000_reinit_locked(struct e1000_adapter *adapter);
-void e1000_reset(struct e1000_adapter *adapter);
-int e1000_setup_all_tx_resources(struct e1000_adapter *adapter);
-int e1000_setup_all_rx_resources(struct e1000_adapter *adapter);
-void e1000_free_all_tx_resources(struct e1000_adapter *adapter);
-void e1000_free_all_rx_resources(struct e1000_adapter *adapter);
 static int e1000_setup_tx_resources(struct e1000_adapter *adapter,
 				    struct e1000_tx_ring *txdr);
 static int e1000_setup_rx_resources(struct e1000_adapter *adapter,
@@ -79,7 +71,6 @@ static void e1000_free_tx_resources(struct e1000_adapter *adapter,
 				    struct e1000_tx_ring *tx_ring);
 static void e1000_free_rx_resources(struct e1000_adapter *adapter,
 				    struct e1000_rx_ring *rx_ring);
-void e1000_update_stats(struct e1000_adapter *adapter);
 
 static int e1000_init_module(void);
 static void e1000_exit_module(void);
@@ -87,8 +78,6 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent);
 static void e1000_remove(struct pci_dev *pdev);
 static int e1000_alloc_queues(struct e1000_adapter *adapter);
 static int e1000_sw_init(struct e1000_adapter *adapter);
-int e1000_open(struct net_device *netdev);
-int e1000_close(struct net_device *netdev);
 static void e1000_configure_tx(struct e1000_adapter *adapter);
 static void e1000_configure_rx(struct e1000_adapter *adapter);
 static void e1000_setup_rctl(struct e1000_adapter *adapter);
-- 
2.30.2


--ELWD20BX7LFhUz03
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--ELWD20BX7LFhUz03--
