Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBE7470F8E
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Dec 2021 01:41:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5B1142978;
	Sat, 11 Dec 2021 00:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eY1rP-hI8Vnr; Sat, 11 Dec 2021 00:41:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C2C0642966;
	Sat, 11 Dec 2021 00:41:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 609201C1190
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Dec 2021 00:41:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5B86B857CF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Dec 2021 00:41:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ScpIkKICiOVf for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Dec 2021 00:41:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4F44A857CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Dec 2021 00:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639183294; x=1670719294;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=j+pEU2PK/unlZK6R1gJ5fO9x4s2w4KWtjX5taAKJMtY=;
 b=QwjvILN89+nZx52q/oQJqldwhGeR12+ziVMyb/HDmW6l6eyfetsLLXdq
 5rT8D0Cb0oeIkcVC24cACdVCiSaUcYJ/zxfp0UG+/17H67PRwWF02zCma
 SEST2Lf7h+4lPndRfm4gg5yHFP/LlkSwOTveMmX+Da39J34Yy+JWRxsN8
 5w15SD4lxLLSOjOSE11ZFmmqDp13OQn4N2VJ7a7LLFXQq0+Y8fzKufVAn
 849V1qZCb+lchdKcXOkJYk5aWlDZMlBxq4fpkY+EHqqfE0z1iSDg98f9T
 5hf4yl9UWR2NpAcxWFGsT4p8zTQe62p91ouTFMyLupCvLcVaZLwg/3som w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="324757537"
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; 
 d="scan'208,223";a="324757537"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 16:41:33 -0800
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; 
 d="scan'208,223";a="504160187"
Received: from mmcarty-mobl.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.82.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 16:41:33 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Stefan Dietrich <roots@gmx.de>, Thorsten Leemhuis
 <regressions@leemhuis.info>
In-Reply-To: <d4c9bb101aa79c5acaaa6dd7b42159fb0c91a341.camel@gmx.de>
References: <87r1awtdx3.fsf@intel.com>
 <20211201185731.236130-1-vinicius.gomes@intel.com>
 <5a4b31d43d9bf32e518188f3ef84c433df3a18b1.camel@gmx.de>
 <87o85yljpu.fsf@intel.com>
 <063995d8-acf3-9f33-5667-f284233c94b4@leemhuis.info>
 <8e59b7d6b5d4674d5843bb45dde89e9881d0c741.camel@gmx.de>
 <5c5b606a-4694-be1b-0d4b-80aad1999bd9@leemhuis.info>
 <d4c9bb101aa79c5acaaa6dd7b42159fb0c91a341.camel@gmx.de>
Date: Fri, 10 Dec 2021 16:41:32 -0800
Message-ID: <87h7bgrn0j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-=-="
Subject: Re: [Intel-wired-lan] [PATCH] igc: Avoid possible deadlock during
 suspend/resume
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
Cc: kuba@kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 regressions@lists.linux.dev, greg@kroah.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--=-=-=
Content-Type: text/plain

Hi Stefan,

Stefan Dietrich <roots@gmx.de> writes:

> Agreed and thanks for the pointers; please see the log files and
> .config attached as requested.
>

Thanks for the logs.

Very interesting that the initialization of the device is fine, so it's
something that happens later.

Can you test the attached patch?

If the patch works, I would also be interested if you notice any loss of
functionality with your NIC. (I wouldn't think so, as far as I know,
i225-V models have PTM support but don't have any PTP support).

>
> Cheers,
> Stefan
>
>
> On Fri, 2021-12-10 at 15:01 +0100, Thorsten Leemhuis wrote:
>> On 10.12.21 14:45, Stefan Dietrich wrote:
>> > thanks for keeping an eye on the issue. I've sent the files in
>> > private
>> > because I did not want to spam the mailing lists with them. Please
>> > let
>> > me know if this is the correct procedure.
>>

Cheers,
-- 
Vinicius


--=-=-=
Content-Type: text/x-patch
Content-Disposition: attachment;
 filename=0001-igc-Do-not-enable-crosstimestamping-for-i225-V-model.patch
Content-Description: test patch for deadlock in igc

From bc78a215cd3a68375ec62a05080070876e31d733 Mon Sep 17 00:00:00 2001
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Fri, 10 Dec 2021 16:23:42 -0800
Subject: [TEST ONLY] igc: Do not enable crosstimestamping for i225-V models

WIP WIP WIP

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ptp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c b/drivers/net/ethernet/intel/igc/igc_ptp.c
index 30568e3544cd..b525035a8a2b 100644
--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
@@ -768,7 +768,13 @@ int igc_ptp_get_ts_config(struct net_device *netdev, struct ifreq *ifr)
  */
 static bool igc_is_crosststamp_supported(struct igc_adapter *adapter)
 {
-	return IS_ENABLED(CONFIG_X86_TSC) ? pcie_ptm_enabled(adapter->pdev) : false;
+	if (!IS_ENABLED(CONFIG_X86_TSC))
+		return false;
+
+	if (adapter->pdev->device == IGC_DEV_ID_I225_V)
+		return false;
+
+	return pcie_ptm_enabled(adapter->pdev);
 }
 
 static struct system_counterval_t igc_device_tstamp_to_system(u64 tstamp)
-- 
2.33.1


--=-=-=
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--=-=-=--
