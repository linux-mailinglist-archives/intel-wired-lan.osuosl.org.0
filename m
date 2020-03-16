Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B750187330
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2020 20:17:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6881422739;
	Mon, 16 Mar 2020 19:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rADXl6UnEKeF; Mon, 16 Mar 2020 19:17:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 407FF2271F;
	Mon, 16 Mar 2020 19:17:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7DCD51BF3C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:17:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7A3358713D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:17:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4k8v5SnmiuIc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2020 19:17:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CBAF38712F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2020 19:17:31 +0000 (UTC)
IronPort-SDR: 83soziJMcpI2IjgA3a6WQBJGQUO7WpcU7hEgaUzFXHsfykIKAuQRMw01Oj2NwB61w0DsDLctRj
 86tDaomTcpww==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 12:17:31 -0700
IronPort-SDR: Lbp9ASxRUIX91K2p8Nc6aCr5D23xbCa6dH/qckamXQJ278NdJ6qH0c+BrwlWUNf4RykSdPKhmD
 gHi3In1Ihcrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,561,1574150400"; d="scan'208";a="323596949"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga001.jf.intel.com with ESMTP; 16 Mar 2020 12:17:30 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Mar 2020 12:17:30 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 16 Mar 2020 12:17:30 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 16 Mar 2020 12:17:30 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v3 2/9] ice: create function to read a
 section of the NVM and Shadow RAM
Thread-Index: AQHV+BHBiKPbdxxpOkWQ1nMyHNdKSahLnrBw
Date: Mon, 16 Mar 2020 19:17:30 +0000
Message-ID: <e6b9c97c293f4b2bad0d1935c8de05c5@intel.com>
References: <20200312015818.1007882-1-jacob.e.keller@intel.com>
 <20200312015818.1007882-3-jacob.e.keller@intel.com>
In-Reply-To: <20200312015818.1007882-3-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v3 2/9] ice: create function to read a
 section of the NVM and Shadow RAM
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
Sent: Wednesday, March 11, 2020 6:58 PM
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Cc: Jakub Kicinski <kuba@kernel.org>
Subject: [Intel-wired-lan] [PATCH v3 2/9] ice: create function to read a section of the NVM and Shadow RAM

The NVM contents are read via firmware by using the ice_aq_read_nvm function. This function has a couple of limits:

1) The AdminQ commands can only take buffers sized up to 4Kb. Thus, any
   larger read must be split into multiple reads.
2) when reading from the Shadow RAM, reads must not cross sector
   boundaries. The sectors are also 4Kb in size.

Implement the ice_read_flat_nvm function to read portions of the NVM by flat offset. That is, to read using offsets from the start of the NVM rather than from a specific module.

This function will be able to read both from the NVM and from the Shadow RAM. For simplicity NVM reads will always be broken up to not cross 4Kb page boundaries, even though this is not required unless reading from the Shadow RAM.

Use this new function as the implementation of ice_read_sr_word_aq.

The ice_read_sr_buf_aq function is not modified here. This is because a following change will remove the only caller of that function in favor of directly using ice_read_flat_nvm. Thus, there is little benefit to changing it now only to remove it momentarily. At the same time, the ice_read_sr_aq function will also be removed.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  2 +
 drivers/net/ethernet/intel/ice/ice_nvm.c      | 87 +++++++++++++++++--
 drivers/net/ethernet/intel/ice/ice_nvm.h      |  3 +
 3 files changed, 85 insertions(+), 7 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
