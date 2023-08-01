Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2AA76B2F7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 13:20:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE66C4025D;
	Tue,  1 Aug 2023 11:20:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE66C4025D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690888819;
	bh=McJzuQrIhnHzpd1fCmw13wZ5ZNg2c2hjS7fyT2rufdg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=OIexAaF4B5buM7tmapVYtTkID7k91/R8nitY0i5xfyDxtN+war2Byy+LHRhlFDW+a
	 AnHQyXJcm5rhcmjN/uUrjwWaoUJQMuwdXU/t+BVOXC3MJvj9sZRJx3MVy3Xh98S93O
	 M9y/n9ofT8YOSfuG9i1yuePBOrvnkMilEzl167wKzggNkdsZcQgCpxylg40RGogu12
	 x6lLCLXA+w4Z4QnVTWhZ8+1SlbtDpZy55H3kxmgL4eKuNdJHVw0H8yKr6McexoB2yv
	 VmfjUgQtV5VNhHQHDFI79yr6UnAnBmXsIuy2vrVjlbbMYBSRZfsNOnPNCP6Xr32Op6
	 kpuv6KjFYzp2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ecIdhT1gkSWQ; Tue,  1 Aug 2023 11:20:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3D3E0402B1;
	Tue,  1 Aug 2023 11:20:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3D3E0402B1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 180C31BF290
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:20:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A9E6F402F7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:19:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9E6F402F7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JOaLMFk34iIr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 11:19:52 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0E814011A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 11:19:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0E814011A
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="455644608"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="455644608"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 04:19:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="852415984"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="852415984"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga004.jf.intel.com with ESMTP; 01 Aug 2023 04:19:48 -0700
Received: from pkitszel-desk.tendawifi.com (unknown [10.255.193.236])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AA00033BFB;
 Tue,  1 Aug 2023 12:19:46 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: Kees Cook <keescook@chromium.org>
Date: Tue,  1 Aug 2023 13:19:21 +0200
Message-Id: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690888792; x=1722424792;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p38RNBiodPsGTUvHHthqRsdKcc6ICIQY2cU2NRQTHwM=;
 b=MhR6d+aUNM5xkWldxTVnS6Pbq3EwqBY2h9lRbITZhChTOVgQoKjk1jgL
 gPleu8GhJ8M0TuWlRutJy5PYKBF8Iw5ZwwwAkdQdV6gHv9gGb5OVk79m0
 SB/MdtTiEs1xt8cH7vkoFYY94Pq2UUMVHvg7ZKYq2Je0KQ1MnKeuQe2yQ
 G9evhe6UePcnATv1UdIoQ+wRqA/qKsoGH9Prg28DdHvkqQPs7cZ+OV6DE
 tVO62TloLvdYRTFISz4myEoJb9XrK4th/nuo4RkOqOQLon63sXSwLAh0i
 x/y55gFZ7y8gCINOhbK9I+fcjshhEg27yLq5qKgLyPC7hi1Kg1n/k0gti
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MhR6d+aU
Subject: [Intel-wired-lan] [RFC net-next 0/2] introduce DECLARE_FLEX() macro
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
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add DECLARE_FLEX() macro that lets us declare structures with flexible
array members on stack (patch 1).

Show how it could be used by ice example (note that post-RFC version will
cover whole driver, here is just one file) (patch 2).

Two open questions:
Any better macro name?
Especially given it's valid only for on stack allocations,
(ie. could not be placed into struct definitions).

More sugar?
It's tempting to introduce yet another macro that would avoid
repetition of flex array field name and count, eg to apply:
-struct_size(sw_buf, elem, 1)
+flex_sizeof(sw_buf)

With simple definition:
+#define flex_sizeof(var) \
+	sizeof(var##_buf)

Yet I'm unsure if usage it's not too magical then?

Przemek Kitszel (2):
  overflow: add DECLARE_FLEX() for on-stack allocs
  ice: make use of DECLARE_FLEX() in ice_switch.c

 drivers/net/ethernet/intel/ice/ice_switch.c | 53 +++++----------------
 include/linux/overflow.h                    | 14 ++++++
 2 files changed, 26 insertions(+), 41 deletions(-)


base-commit: 9d1505d88ad0f6970015a06a475b9d67b21f20fa
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
