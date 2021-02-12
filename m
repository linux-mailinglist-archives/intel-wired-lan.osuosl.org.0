Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C5C31A40D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 18:52:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8AD866F7A3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Feb 2021 17:52:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z83WiK7oGzB6 for <lists+intel-wired-lan@lfdr.de>;
	Fri, 12 Feb 2021 17:52:14 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id A3F466F659; Fri, 12 Feb 2021 17:52:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22D5C6F785;
	Fri, 12 Feb 2021 17:52:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 822281BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 17:52:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 69AB96E922
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 17:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 24XypPaYfnHr for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Feb 2021 17:52:00 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id B0E386F528; Fri, 12 Feb 2021 17:52:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C72B6E922
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Feb 2021 17:51:59 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 680CB64E9A;
 Fri, 12 Feb 2021 17:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1613152319;
 bh=wGwQsAwZ1k9v0j7Vwt7Ai/MM+Mhs0Gb0UbBLuunFHmw=;
 h=Date:From:To:Cc:Subject:From;
 b=gH3Zai2URZXYsRqakW4Y6fB3mT8S9CSi+XFeBAkURA00RCfGQEpFg88m8R8ljt7Ex
 C8/Z92H9PyaLBwwPV3aRoxPc3CCLSyZhkZuBUTv10A17bJ/TOwbHxE6TZQh9BvNWph
 zapAvuyCO6JlcTjR94A875uR+fyLSlGdM9KzGj/osi3naJtS/VnEIrB5fB5Uyu7ZtI
 wonhMCVAlG9q3e3yn/PDReZZpnCiCAZDvBfraAm7qpr9ps9h+K+YK8DS4BkKxw8G75
 XKW+DB36xbFWzANrFJtGlWcT/m1JLzDkYf8rr+3FwvTnDzAVJCa83e/bMUuQpdjwcL
 pdJlGbkH5cppg==
Date: Fri, 12 Feb 2021 11:51:56 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Message-ID: <20210212175156.GA277354@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH][next] i40e: Fix incorrect argument in
 call to ipv6_addr_any()
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It seems that the right argument to be passed is &tcp_ip6_spec->ip6dst,
not &tcp_ip6_spec->ip6src, when calling function ipv6_addr_any().

Addresses-Coverity-ID: 1501734 ("Copy-paste error")
Fixes: efca91e89b67 ("i40e: Add flow director support for IPv6")
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 8a4dd77a12da..a8a2b5f683a2 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -4250,7 +4250,7 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
 				    (struct in6_addr *)&ipv6_full_mask))
 			new_mask |= I40E_L3_V6_DST_MASK;
 		else if (ipv6_addr_any((struct in6_addr *)
-				       &tcp_ip6_spec->ip6src))
+				       &tcp_ip6_spec->ip6dst))
 			new_mask &= ~I40E_L3_V6_DST_MASK;
 		else
 			return -EOPNOTSUPP;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
