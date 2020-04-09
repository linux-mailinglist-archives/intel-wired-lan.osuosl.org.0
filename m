Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FB51A399A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Apr 2020 20:10:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11F158806D;
	Thu,  9 Apr 2020 18:10:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WdfQcYLRk+tg; Thu,  9 Apr 2020 18:10:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6CC5987E46;
	Thu,  9 Apr 2020 18:10:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D12F1BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2020 18:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 589BF862A5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2020 18:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mi8qSTbxkoVz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Apr 2020 18:10:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 73D3586155
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Apr 2020 18:10:53 +0000 (UTC)
IronPort-SDR: gQ+GLHUFP1Gv1FCDYAoVLSJUarFQ2O7BBIoN4dzIg4wb7AhJd+X1L/VJDDUPc4sUF4swgjWHey
 5UYBKOQ3UACw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 11:10:52 -0700
IronPort-SDR: e1Ijgeds6oT661bbv+yoVwhyzPPvEx2tbyrZY80OBAHu2jKj+/jyucdePxPVgbKerucjrnBDRS
 W5R/wQ1lX7HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,363,1580803200"; d="scan'208";a="240708412"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga007.jf.intel.com with ESMTP; 09 Apr 2020 11:10:50 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 9 Apr 2020 11:10:48 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Apr 2020 11:10:48 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Thu, 9 Apr 2020 11:10:48 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v2] i40e: Add support for a new
 feature: Total Port Shutdown
Thread-Index: AQHWDQbjcwnTbXahMku7TgsRkpnkRqhxGiCg
Date: Thu, 9 Apr 2020 18:10:48 +0000
Message-ID: <cabe5a3627e545849fcf40604771ca7b@intel.com>
References: <20200407180252.1920528-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200407180252.1920528-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue v2] i40e: Add support for a new
 feature: Total Port Shutdown
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
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jeff Kirsher
Sent: Tuesday, April 7, 2020 11:03 AM
To: intel-wired-lan@lists.osuosl.org
Cc: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
Subject: [Intel-wired-lan] [next-queue v2] i40e: Add support for a new feature: Total Port Shutdown

From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Currently after requesting to down a link on a physical network port, the traffic is no longer being processed but the physical link with a link partner is still established.

Total Port Shutdown allows to completely shutdown the port on the link-down procedure by physically removing the link from the port.

Introduced changes:
- probe NVM if the feature was enabled at initialization of the port
- special handling on link-down procedure to let FW physically shutdown the port if the feature was enabled

Testing Hints (required if no HSD):
Link up/down, link-down-on-close

Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v2: added missing define

 drivers/net/ethernet/intel/i40e/i40e.h        |   1 +
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |   1 +
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |   8 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 125 +++++++++++++++---
 4 files changed, 114 insertions(+), 21 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
