Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF04C6A306C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Feb 2023 15:49:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B2F940547;
	Sun, 26 Feb 2023 14:49:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B2F940547
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677422977;
	bh=9CqwI1e6CRhPeMy2/Aw5U4cGtDncADlwATMBH2eXHhg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JA/I4VeKvxKwS8SYLQnizvmD5lOiN5DgQtvRvml/f4nwQJLEqrxhCyUnZGap/z5re
	 +N55h2CjHwXyvbNDG7AXfnDKVGPSuvcFWYKs85F3gih7SB8bis+8C/w5N+GfppbTSq
	 ly7OJBhX3VV3L7UrCcCEUTsmIGaSE01Zcn92osrPEyLAiSrNTAZkL4dQ8+FSYpxkbJ
	 l1zLcT0CFJtavjcZyqHzbmgzdP3glg1N2ta+jIJyjbthjO1VxX5Qm67CSLTpL3aSyH
	 5USBNrmKdGieWzTWrXxWRIuC47Ruv+RGebLlxWuOaZC9yT6pWtmH/GOcHbNFsJTX0L
	 h+lzb0gWvgKLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QxaRNX8JRWnO; Sun, 26 Feb 2023 14:49:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12D5340328;
	Sun, 26 Feb 2023 14:49:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12D5340328
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 139531BF868
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Feb 2023 14:49:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E1E5B81372
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Feb 2023 14:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1E5B81372
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 438pTF6PZkEC for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Feb 2023 14:49:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED9628136F
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED9628136F
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Feb 2023 14:49:25 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 29B34B80BD9;
 Sun, 26 Feb 2023 14:49:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E6A9C4339B;
 Sun, 26 Feb 2023 14:49:21 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 26 Feb 2023 09:48:21 -0500
Message-Id: <20230226144845.827893-13-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230226144845.827893-1-sashal@kernel.org>
References: <20230226144845.827893-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1677422962;
 bh=sB4qmt7A4dKezC7XbRxJu7JVBeriEdk0CE62+dhbjpU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=j9+CiHhUjVX2m8BNHXbk4gvvuc0djIYwRxaqVzT7nFEK4VeFJBciA4t1VaLWgiil8
 E51OOLcwM7N3rTKeGSchkXwuOFDlfwD34KT8zy5Ecwt0Bgwv7AJdS6pKy2AJPIUchf
 2GzpzFb02NyfEZ9SflGYBLYuunAA7a9SwtB8r3xWm8vv76XNhD0M+uJJHP3jIS7pSE
 vsF4hHh7Jq0LGFFjJcQm61Bgty4JQT7blBghU+ATvkviqtRXyUuPFhPK4ns9fA5SgT
 MHE/pJ1o7NE6y7eerBj1XBz2fGyeSo1fcedwCSO+zsPejkcyD8JetDoRGnLKdkVS5A
 oqRM03XtVkDHQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=j9+CiHhU
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.15 13/36] ice: restrict PTP HW
 clock freq adjustments to 100, 000, 000 PPB
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
Cc: Sasha Levin <sashal@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Siddaraju DH <siddaraju.dh@intel.com>, jesse.brandeburg@intel.com,
 richardcochran@gmail.com, edumazet@google.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Siddaraju DH <siddaraju.dh@intel.com>

[ Upstream commit 8aa4318c3a122b8670bc09af142de3872ca63b88 ]

The PHY provides only 39b timestamp. With current timing
implementation, we discard lower 7b, leaving 32b timestamp.
The driver reconstructs the full 64b timestamp by correlating the
32b timestamp with cached_time for performance. The reconstruction
algorithm does both forward & backward interpolation.

The 32b timeval has overflow duration of 2^32 counts ~= 4.23 second.
Due to interpolation in both direction, its now ~= 2.125 second
IIRC, going with at least half a duration, the cached_time is updated
with periodic thread of 1 second (worst-case) periodicity.

But the 1 second periodicity is based on System-timer.
With PPB adjustments, if the 1588 timers increments at say
double the rate, (2s in-place of 1s), the Nyquist rate/half duration
sampling/update of cached_time with 1 second periodic thread will
lead to incorrect interpolations.

Hence we should restrict the PPB adjustments to at least half duration
of cached_time update which translates to 500,000,000 PPB.

Since the periodicity of the cached-time system thread can vary,
it is good to have some buffer time and considering practicality of
PPB adjustments, limiting the max_adj to 100,000,000.

Signed-off-by: Siddaraju DH <siddaraju.dh@intel.com>
Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 9b50e9e6042a5..4d7aa49b7c147 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1090,7 +1090,7 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
 	snprintf(info->name, sizeof(info->name) - 1, "%s-%s-clk",
 		 dev_driver_string(dev), dev_name(dev));
 	info->owner = THIS_MODULE;
-	info->max_adj = 999999999;
+	info->max_adj = 100000000;
 	info->adjtime = ice_ptp_adjtime;
 	info->adjfine = ice_ptp_adjfine;
 	info->gettimex64 = ice_ptp_gettimex64;
-- 
2.39.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
