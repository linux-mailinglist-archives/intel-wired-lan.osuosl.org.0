Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD78928967
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jul 2024 15:15:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 04E8E40A38;
	Fri,  5 Jul 2024 13:15:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qtopi8oYWTGG; Fri,  5 Jul 2024 13:15:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2991E41439
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720185347;
	bh=8jHBXygmSVHdd6jqqIFv16sAx39oAk94SwbElLnYJnQ=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ICzLs+LBUEd0O40YQNgJ2WgnVvj7E6mob5UmIHB6wf5906QcVZ+WV9TxyoQm7V5eP
	 nOQ4ZAEVrI3Ns1RH7pDwxM+Po5onQ87BkEKuiAL8/tEQt6Lkwe8wluQHOi+QWEeWgi
	 S865VTD31+6VgHMMLbt4YjHvQI0t8N1Z/dmeDwFO3t0/awNFuiLjAlkIdK4I9N96Ei
	 eZsDIjxUL8gOjV2w4LUtC4LstUJaAu/7MbeipiZfdM2Ym9fkqxBarsZOpflarCX8Pq
	 GJUyo4aPpsxTLefOv/aqjwV3ET0tinJqXE9IyzgscIAf5EiJscDSEOTvsAi4BGNYhg
	 oi7BSZeeha+DQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2991E41439;
	Fri,  5 Jul 2024 13:15:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CCE7B1BF284
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 13:15:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B8324404F6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 13:15:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SCF_2cbweME8 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jul 2024 13:15:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DBEC740197
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBEC740197
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DBEC740197
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 13:15:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B51AC62BC8;
 Fri,  5 Jul 2024 13:15:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AD64C116B1;
 Fri,  5 Jul 2024 13:15:42 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
Date: Fri, 05 Jul 2024 14:15:40 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240705-i40e-kdoc-v1-1-529d0808a1ef@kernel.org>
X-B4-Tracking: v=1; b=H4sIAPvxh2YC/x3MQQqAIBBG4avErBswKYKuEi1Ef2soLDQqkO6et
 Pzg8TIlREGiocoUcUmSPRQ0dUV2MWEGiysmrXSretWxtAq8ut2ygdPe9KaD9VT6I8LL879Gknv
 jgOek6X0/qGwv7WUAAAA=
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Mailer: b4 0.12.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720185343;
 bh=DxcxTZVuuNTU4W0/gz5O/gSVTAwCzeA90soDR50/TgQ=;
 h=From:Date:Subject:To:Cc:From;
 b=TWsookLmYHt5LqPLjdaGWrMG0zU85RgXg+qpOSF03Tz8eNLuTFpRwq4nQZPUL9jIL
 SmZfJvI4wi1R715t+jg3fd8+ZFzwmnqZ7lY/ZNz3axjORtKojgoTKAy2e0am+HuAna
 UDmOcxsNVzzj0oYZ6zTG8fmHXC22Z6XAKWwLe6+5bvFsvcAaIa9yQyjvfemvPsJXlZ
 ZXaqZj2MpmQzsLmKW1lTxvZamChLuGm5w5gajoQawD4Gf2AIE6PeotNCUN0ke3LKQb
 nG5h0Q41R5AeX7N12y6WPMJD4227WdQR6RcRIIcIXz6wdA1GohUjPUYY3DLEqktQkJ
 cYb7JY08Md0EA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=TWsookLm
Subject: [Intel-wired-lan] [PATCH iwl-next] i40e: correct
 i40e_addr_to_hkey() name in kdoc
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Correct name of i40e_addr_to_hkey() in it's kdoc.

kernel-doc -none reports:

 drivers/net/ethernet/intel/i40e/i40e.h:739: warning: expecting prototype for i40e_mac_to_hkey(). Prototype was for i40e_addr_to_hkey() instead

Signed-off-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index bca2084cc54b..d546567e0286 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -735,7 +735,7 @@ __i40e_pf_next_veb(struct i40e_pf *pf, int *idx)
 	     _i++, _veb = __i40e_pf_next_veb(_pf, &_i))
 
 /**
- * i40e_mac_to_hkey - Convert a 6-byte MAC Address to a u64 hash key
+ * i40e_addr_to_hkey - Convert a 6-byte MAC Address to a u64 hash key
  * @macaddr: the MAC Address as the base key
  *
  * Simply copies the address and returns it as a u64 for hashing

