Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E30EC9FA1EA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Dec 2024 19:43:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBD0670A22;
	Sat, 21 Dec 2024 18:43:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O0zRgpBg4jkB; Sat, 21 Dec 2024 18:43:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4892660E2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734806598;
	bh=0TFI9S9bap1xFhpx/5Ll76o0tMhdhRDlCPMt7aUPxYw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zuGPWopee6ZS+c0VeiYnqtoAME2PoNR+9Og4fiRU4QjAwS2hTfXwa7l3W3Or7PdQL
	 +XKbpYIEPWCYyloH9tWOj6/b72b73tXyND70h4yzgcrg39UkU2bnbwiusDCCxUI60n
	 jm8to+p5WeSGrEId7HonkxBANeHHoHl2sjwF/b6PStPHTPeeDAc5P08TefenTsBD0M
	 CHjUFoD+HF+xu9rJZs57BmNZXZ2ACzFyyNAhvFjyqsK59cGQES3BwCbpq/ZOHr+xdm
	 nJz+Y2SToDnrOMrWxhBxL2/VNdVlPrKZT4BwJ3A+l8SMbqgJuwDg0Il+KO25TpkPxG
	 MpVO97T9X2ElA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4892660E2A;
	Sat, 21 Dec 2024 18:43:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A3559920
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 65C67413C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oEqTjbvdnyFC for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Dec 2024 18:42:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8CA05412EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CA05412EB
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8CA05412EB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:42:58 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tP4R6-006hEJ-0K;
 Sat, 21 Dec 2024 18:42:48 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Sat, 21 Dec 2024 18:42:38 +0000
Message-ID: <20241221184247.118752-1-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=0TFI9S9bap1xFhpx/5Ll76o0tMhdhRDlCPMt7aUPxYw=; b=s23080nKd4BH1FKR
 no/Rjc0i+ovnSwTtsYfI986t7HOJYJT5NpOL7CYjiRUqksfkvoD88nWR3RM09XPXqHxeBK/zPTXi0
 qKMPHhPT/HqNvPTVCLrXJQr1jeVXH2hQK44dLXyrxIwZRM1YkvzJ5dKcflz0RFKHvE1h5yVTsvIV8
 eC16Nn/tnA81jluUahnnQP5+SiK9wW9QnnqWd/bE2J3FaNxu57FpzZumqz7z21mZmZ8JZxJKy163M
 lovnK0t6ajpHgw+2DjV2s/+fO4cq30JIdj5G17yVTwSIHj26j6NjXw2yEBd41T04MKDlpi4+9wFv0
 JwtrMgjxGPceGgf3zw==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=s23080nK
Subject: [Intel-wired-lan] [RFC net-next 0/9] i40e deadcoding
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

From: "Dr. David Alan Gilbert" <linux@treblig.org>

Hi,
  This is a bunch of deadcoding of functions that
are entirely uncalled in the i40e driver.

  Build tested only.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>


Dr. David Alan Gilbert (9):
  i40e: Deadcode i40e_aq_*
  i40e: Remove unused i40e_blink_phy_link_led
  i40e: Remove unused i40e_(read|write)_phy_register
  i40e: Deadcode profile code
  i40e: Remove unused i40e_get_cur_guaranteed_fd_count
  i40e: Remove unused i40e_del_filter
  i40e: Remove unused i40e_commit_partition_bw_setting
  i40e: Remove unused i40e_asq_send_command_v2
  i40e: Remove unused i40e_dcb_hw_get_num_tc

 drivers/net/ethernet/intel/i40e/i40e.h        |   3 -
 drivers/net/ethernet/intel/i40e/i40e_adminq.c |  10 -
 drivers/net/ethernet/intel/i40e/i40e_common.c | 458 ------------------
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  13 -
 drivers/net/ethernet/intel/i40e/i40e_dcb.h    |   1 -
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 124 +----
 .../net/ethernet/intel/i40e/i40e_prototype.h  |  40 --
 7 files changed, 2 insertions(+), 647 deletions(-)

-- 
2.47.1

