Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6169FFCD5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 18:37:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3BAE401F3;
	Thu,  2 Jan 2025 17:37:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1DyjU1MIRufJ; Thu,  2 Jan 2025 17:37:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC0AF401C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735839467;
	bh=BLfWDy6Mh+x3ZLFoG1A6rUjcWBV6etcehzoDQyHhNU8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Hlr0XQZBhI/PpIfY2k0bEpjcB6eDR3XwJ7bPWglU6K+vyFYvj86D2lS3Vm7HIFlid
	 nUhwqQz/31c1FRwDJsAZp/GiToAQ/jz7XJuIZfjecvtFqwnwlQPJnbyRqRayICffJz
	 YqTWNZw+cgJ5Quuq3X2012NMR5p1tF9TVnoW41DX8427aedjv7eQ6tIeFmcJw0OZNm
	 eP/SVgijZ/tW8Ven5gEGpBkuHe+FXB6TXfdCvhPt3GFT+KI6+0zCtxxpPK8tOvEKfI
	 nlaiJVmkF9QeJVoshfG1Dzgy56K6p+AjAVHG2e12QgR4GRqezp0pmqAhsaPwB+BVp6
	 uy9qC/97n8S2A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC0AF401C8;
	Thu,  2 Jan 2025 17:37:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A244BF24
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 83D2E804F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:37:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0QUa0WeAFL17 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 17:37:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C76D680499
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C76D680499
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C76D680499
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:37:44 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tTP8K-007tod-0q;
 Thu, 02 Jan 2025 17:37:20 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Thu,  2 Jan 2025 17:37:08 +0000
Message-ID: <20250102173717.200359-1-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=BLfWDy6Mh+x3ZLFoG1A6rUjcWBV6etcehzoDQyHhNU8=; b=nDgK2uurZqxVHz5x
 3CvPflLhVQz+M1MFUzqJz2hn12t3tKV2YdnrK2RVnU/TbcoWSEJL7cgZpFBfCsFSq5yP21zWRh28l
 QTxdRn4MktBgXY31aHcjS/dkm6fDupLD11wl/uHPU7Hp9NR/m7d8bG7e2b9kPDwXDLWpC4BZ7lT6A
 Rf67JN/+MGNRc/jKYO46dTflT+REeLp2QZeVyzfjZYPoZWp2APOSSMam7SG/Cos911ZT27Up8TY5G
 0hibNenYnktmXpsmlhvXjSSs1C3n+POUiQ4yQyeLpERURUYmSVN/X9zYXiqA+96AgX0Tfmer7a00i
 HpJAJZOFVbRvqWx1oQ==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org
 header.a=rsa-sha256 header.s=bytemarkmx header.b=nDgK2uur
Subject: [Intel-wired-lan] [PATCH net-next 0/9] i40e deadcoding
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
(Resend now that netdev has woken up)

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

