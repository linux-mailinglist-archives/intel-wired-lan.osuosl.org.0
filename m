Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 694419FA1EE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Dec 2024 19:43:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42A446F61C;
	Sat, 21 Dec 2024 18:43:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZBBJ0c7KYy4n; Sat, 21 Dec 2024 18:43:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95123707E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734806603;
	bh=9815t0aBUmhZMZg7qPMHeKGmKhqpBIRlTkKfE9H7HIQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p9y/TE/TQqlDDOih13YfkG48dczh7ihDg/BOatP42UREpxqvallzzHn/DPIR8U/8D
	 ZDhYs+XkuJxdS6E+EGQfszNo+VBv+fCHDzZZ3LWFPC+8DujCErjjz63bUX8S+fnPP7
	 ijpi9aLE+DNlBIvGll/V4Rdo7J+NwgO2Z4tRO+UM/FsNdqxHmxv5XATAy+wEP7WQis
	 DsYtbkvicdJaRUzLqrtuyHMq8kwwxvp24aiqSPlUc2qIF9N52ZhQOmbmMzUshgxzd3
	 ENashq4ul4mhTw+DmY8VWiomugjxzcNgR9d5hNnz0glav0BOJ06eSObrlHtLNOAnpD
	 h5qcwwtUeR3GQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95123707E6;
	Sat, 21 Dec 2024 18:43:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id CBCEE757
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9FD72417CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VFud2JNLkVBk for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Dec 2024 18:42:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 872F3412E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 872F3412E7
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 872F3412E7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:42:59 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tP4R9-006hEJ-14;
 Sat, 21 Dec 2024 18:42:51 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Sat, 21 Dec 2024 18:42:43 +0000
Message-ID: <20241221184247.118752-6-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241221184247.118752-1-linux@treblig.org>
References: <20241221184247.118752-1-linux@treblig.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=9815t0aBUmhZMZg7qPMHeKGmKhqpBIRlTkKfE9H7HIQ=; b=YZIEluBGo4FbX6Qt
 3aEAi82m9DrLZc/NDPxBEX9w2zcBL/wWHvXPx2biveJ+DZV/VOn/8V8ZajFWEANg/5SRIN6wMezTj
 4CH8KrFXnjqyUi5CthpCGqufuVNtdsytB/jLXeYxG7TGxjLwrjl2hyjEZ4Vn0bqi02kArheoYpGv2
 8gf/FR7n2QqLtRmdoamvnK/Q+SfS0W0D4UBubrSHqTaDUoCS1XN769f7eEY7sz3qURmfjOvYnd5xp
 jqtKGSCpIBFj+DgCpxXhD+zTB+Z7V9XyAo4ijcu/aBBw9SlszVQAv6uBd9tDTeSS/XPAJXagMFSwe
 f1fJnjk04MB5A14gCw==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=YZIEluBG
Subject: [Intel-wired-lan] [RFC net-next 5/9] i40e: Remove unused
 i40e_get_cur_guaranteed_fd_count
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

The last use of i40e_get_cur_guaranteed_fd_count() was removed in 2015 by
commit 04294e38a451 ("i40e: FD filters flush policy changes")

Remove it.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/net/ethernet/intel/i40e/i40e.h      |  1 -
 drivers/net/ethernet/intel/i40e/i40e_main.c | 13 -------------
 2 files changed, 14 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index d4255c2706fa..5d9738b746f4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1189,7 +1189,6 @@ int i40e_add_del_fdir(struct i40e_vsi *vsi,
 		      struct i40e_fdir_filter *input, bool add);
 void i40e_fdir_check_and_reenable(struct i40e_pf *pf);
 u32 i40e_get_current_fd_count(struct i40e_pf *pf);
-u32 i40e_get_cur_guaranteed_fd_count(struct i40e_pf *pf);
 u32 i40e_get_current_atr_cnt(struct i40e_pf *pf);
 u32 i40e_get_global_fd_count(struct i40e_pf *pf);
 bool i40e_set_ntuple(struct i40e_pf *pf, netdev_features_t features);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 0e1d9e2fbf38..83ba1effe8ba 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -9628,19 +9628,6 @@ static void i40e_handle_lan_overflow_event(struct i40e_pf *pf,
 	i40e_reset_vf(vf, false);
 }
 
-/**
- * i40e_get_cur_guaranteed_fd_count - Get the consumed guaranteed FD filters
- * @pf: board private structure
- **/
-u32 i40e_get_cur_guaranteed_fd_count(struct i40e_pf *pf)
-{
-	u32 val, fcnt_prog;
-
-	val = rd32(&pf->hw, I40E_PFQF_FDSTAT);
-	fcnt_prog = (val & I40E_PFQF_FDSTAT_GUARANT_CNT_MASK);
-	return fcnt_prog;
-}
-
 /**
  * i40e_get_current_fd_count - Get total FD filters programmed for this PF
  * @pf: board private structure
-- 
2.47.1

