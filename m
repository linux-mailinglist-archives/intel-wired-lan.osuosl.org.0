Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2C09FFCF2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 18:41:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00678403CA;
	Thu,  2 Jan 2025 17:41:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ejfAihQhwOWO; Thu,  2 Jan 2025 17:41:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CDBA40353
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735839714;
	bh=AQObr0bA1IYS/3zsfu/8IsXvh0M/fYclu9jnYLuEaMQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=4gATxcVJLX0jt6O/pb/uvnI5kLaLA2RUpsZVItcxW0L4ItWCGUkexIK8J9AKuYwwE
	 TU3w5hSrAXG5wAYS/hf42+iqQ6Cyw99OUWu6GXzkdniSz6WAveQDhwmHh9CiwSr2vO
	 1XuY2Jq8DUFMvmu31keWSv0ECVNy5Y825uyAXUDewrpzktagrrLmEq7iI9h6b+YF5+
	 9K9A4OdGS3Y4R7usiC8kEGXrdKysir+D9LZThXIIMlc0B9c3Omw0WwlXCN5Yt/xLpd
	 sZluO0AxfdRfJDNjHsopinSalEgsBOmIrQATcmy/ZB/BGvI09lesPtrmattWixbJF2
	 HZ2MJsazUbTMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CDBA40353;
	Thu,  2 Jan 2025 17:41:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 97B72F24
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:41:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 78BD380ABC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:41:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iBNrBbKD6Fqk for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 17:41:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CAD7980AC6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CAD7980AC6
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CAD7980AC6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:41:50 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tTPCZ-007u04-2l;
 Thu, 02 Jan 2025 17:41:43 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Thu,  2 Jan 2025 17:41:39 +0000
Message-ID: <20250102174142.200700-1-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=AQObr0bA1IYS/3zsfu/8IsXvh0M/fYclu9jnYLuEaMQ=; b=ZtFBZR+YXDXmBFBD
 FWyXObzJihdONc70lOgEP+kh+8T2Jx/7aadhZuPBc0ciOqzfRj1orVMKO4KPJm1zIM3Ywx/G9N/rF
 zZxjPOizPAPANTaT7appG1ztmZThGNAHeC+ddOi+kUsAGreLMatf8oBNIFMjSFpYTt0WJX+19POwl
 SDcE/s7jG3LNnrGLrVATnIvZprorkR5rcBYmG6nB4X+TjxL1Q0K8VbQvo22jhI0AyWQiIs8YWZuRs
 rI/zuR72Z9rTHlvR3krI6w6qfY8ucWqHBNaJsJTgms+LPJXQoI4DvOs3vZda4YhmvwWHgXXB5Sljk
 ppJWXE0ogekOkugNGw==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=treblig.org header.i=@treblig.org
 header.a=rsa-sha256 header.s=bytemarkmx header.b=ZtFBZR+Y
Subject: [Intel-wired-lan] [PATCH net-next 0/3] igc deadcoding
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
  This set removes some functions that are entirely unused
and have been since ~2018.

Build tested.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
(Repost now netdev is open)

Dr. David Alan Gilbert (3):
  igc: Remove unused igc_acquire/release_nvm
  igc: Remove unused igc_read/write_pci_cfg wrappers
  igc: Remove unused igc_read/write_pcie_cap_reg

 drivers/net/ethernet/intel/igc/igc_hw.h   |  5 ---
 drivers/net/ethernet/intel/igc/igc_main.c | 39 ------------------
 drivers/net/ethernet/intel/igc/igc_nvm.c  | 50 -----------------------
 drivers/net/ethernet/intel/igc/igc_nvm.h  |  2 -
 4 files changed, 96 deletions(-)

-- 
2.47.1

