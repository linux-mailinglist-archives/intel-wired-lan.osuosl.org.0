Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA9D6A3014
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Feb 2023 15:45:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2624408A7;
	Sun, 26 Feb 2023 14:45:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2624408A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677422745;
	bh=4MQfhbwpeUEgx6iZ2yxfh+HE5sNk0QV6Hph6KO+S1S0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=RVarmHRl8JcHxH85hyrhEpxCrUuQDCbA8cGuD5FKVebQnUidjM2uV+3ur8ieQImVt
	 UrCy6QdPzLoxqXs0EpM5ycysdgroxHNGS+vJ/tPlGCVl5P1qYAKVgL1B7GPlzHndtZ
	 58R/SM1U5gvxwap6PWDzWt2XHXXlQ1B2GvXHkkC5gXWF3ZhJpi2kKe1Ul5ZC4S05It
	 dTKfbzvL9zPcbWdj5PhoFEEmvKqT4mGCUt0001krzOPYkuoG/9gFZ0kcE6nf3qzOAn
	 /FWYQ/L/olCv6GJDEivCyr4CUBAN2eG0x//KkWabxpgX0X/mAK6bcbNU6NzWImSMRP
	 aotDmhyYkdgiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p9G-exNntvn9; Sun, 26 Feb 2023 14:45:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9718F4048D;
	Sun, 26 Feb 2023 14:45:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9718F4048D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 001191BF41C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Feb 2023 14:45:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA6F740860
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Feb 2023 14:45:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA6F740860
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xRPjKp0kovQC for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Feb 2023 14:45:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A14244085E
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A14244085E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Feb 2023 14:45:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 1B73FB80BE7;
 Sun, 26 Feb 2023 14:45:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B172C433EF;
 Sun, 26 Feb 2023 14:45:29 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Sun, 26 Feb 2023 09:44:10 -0500
Message-Id: <20230226144446.824580-18-sashal@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230226144446.824580-1-sashal@kernel.org>
References: <20230226144446.824580-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1677422730;
 bh=ZrZh0ffHod44Z2tfuYGnD78a9b3uoNILJV5wnbaMdzA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kyYQZnG5QQJYDOgyj1mfMqle/w0CzSLCqc713x2gbtRSco7V3aV3whLZD9SvGiutM
 WcgPYcuD69HXp30y/pHNUUaxIADr3MnfQIkGm0isouNpt2ZcgpjnFdccb/ZJ73GAj/
 7564M6AH4SHzFGTsTRaQ4ScMfobAjbQmGajyDYrSsa5u2IAg2EcIbxGg2onMUqLBJ8
 3LwP/2TwavHXAlQ1k7WVl8i2eghQYVz+5Ont7urHbkwG8M2wwZfGca5UkKlFtgzZXe
 uZQcSwwkUXmg8tOAs5eszflcKKK4+NaEbDy1ytpD2hswc2/lwXL+eH+mPwACX7UWM9
 A4j7zNEhwWweg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=kyYQZnG5
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.2 18/53] ice: restrict PTP HW
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
index d63161d73eb16..3abc8db1d0659 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2269,7 +2269,7 @@ static void ice_ptp_set_caps(struct ice_pf *pf)
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
