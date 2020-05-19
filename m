Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1B91DA1B0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 May 2020 21:59:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0538786E74;
	Tue, 19 May 2020 19:59:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nX5LB0cQv1Au; Tue, 19 May 2020 19:59:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1DBDE86E78;
	Tue, 19 May 2020 19:59:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 700F81BF336
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 19:37:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6BCE686E3B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 19:37:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mfslu8Xn1sKH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 19:37:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E0A5086D87
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 19:37:19 +0000 (UTC)
IronPort-SDR: u7Ic8nGVUbE/7UWgkkWNQIZMqRcEuQGf92aE7ImUNuTQ1MJ/HiloP1xsXND+vk1vTYbTIROe4m
 Qe4C2Dl0bpxQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 12:37:19 -0700
IronPort-SDR: FlaRX/nrQrjnnQePbQSdSG/jNlwrXR/DrCv/bHWWOQTD3sOLhNxtefoXpxeZUEQqHKGuwKFzcw
 OPabMpg1r6GA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="308501223"
Received: from muhl-mobl4.amr.corp.intel.com (HELO [10.254.99.10])
 ([10.254.99.10])
 by FMSMGA003.fm.intel.com with ESMTP; 19 May 2020 12:37:18 -0700
To: kbuild test robot <lkp@intel.com>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
References: <202005200349.7ZATWxlp%lkp@intel.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <8b058daf-f870-b126-cd1d-d935bdadbf52@linux.intel.com>
Date: Tue, 19 May 2020 14:37:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <202005200349.7ZATWxlp%lkp@intel.com>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 19 May 2020 19:59:51 +0000
Subject: Re: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 105/183]
 sound/soc/sof/intel/apl.c:167:1: error: type defaults to 'int' in
 declaration of 'MODULE_IMPORT_NS'
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
Cc: Fred Oh <fred.oh@linux.intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, kbuild-all@lists.01.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> sound/soc/sof/intel/apl.c:167:1: warning: data definition has no type or storage class
> 167 | MODULE_IMPORT_NS(SND_SOC_SOF_CLIENT);
> | ^~~~~~~~~~~~~~~~
>>> sound/soc/sof/intel/apl.c:167:1: error: type defaults to 'int' in declaration of 'MODULE_IMPORT_NS' [-Werror=implicit-int]
> sound/soc/sof/intel/apl.c:167:1: warning: parameter names (without types) in function declaration
> cc1: some warnings being treated as errors
> --
> sound/soc/sof/intel/cnl.c:444:1: warning: data definition has no type or storage class
> 444 | MODULE_IMPORT_NS(SND_SOC_SOF_CLIENT);
> | ^~~~~~~~~~~~~~~~
>>> sound/soc/sof/intel/cnl.c:444:1: error: type defaults to 'int' in declaration of 'MODULE_IMPORT_NS' [-Werror=implicit-int]
> sound/soc/sof/intel/cnl.c:444:1: warning: parameter names (without types) in function declaration
> cc1: some warnings being treated as errors

valid issue, the following diff seems to solve it. No idea why it shows 
up no sparc64.

diff --git a/sound/soc/sof/intel/apl.c b/sound/soc/sof/intel/apl.c
index 0565ff315681..547b2b0ccb9a 100644
--- a/sound/soc/sof/intel/apl.c
+++ b/sound/soc/sof/intel/apl.c
@@ -15,6 +15,7 @@
   * Hardware interface for audio DSP on Apollolake and GeminiLake
   */

+#include <linux/module.h>
  #include "../sof-priv.h"
  #include "hda.h"
  #include "../sof-audio.h"
diff --git a/sound/soc/sof/intel/cnl.c b/sound/soc/sof/intel/cnl.c
index 9a40293f872d..0eedb39e1c89 100644
--- a/sound/soc/sof/intel/cnl.c
+++ b/sound/soc/sof/intel/cnl.c
@@ -15,6 +15,7 @@
   * Hardware interface for audio DSP on Cannonlake.
   */

+#include <linux/module.h>
  #include "../ops.h"
  #include "hda.h"
  #include "hda-ipc.h"
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
