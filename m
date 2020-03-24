Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FB51919D3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2020 20:27:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B939C87C30;
	Tue, 24 Mar 2020 19:27:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5CCtRz9v3IrK; Tue, 24 Mar 2020 19:27:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A3F687D91;
	Tue, 24 Mar 2020 19:27:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC4321BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2020 19:27:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E789988874
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2020 19:27:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cIMPNbMQvBsB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2020 19:27:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4CC8488843
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2020 19:27:39 +0000 (UTC)
IronPort-SDR: A2nbgtUtYI+ge4xaU2ULajkb1CgPCXPkQXUszz7gf50EyZaHJlE2Sv8jAelAM6BGj3ooswjGsK
 wCG91/I3QYew==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 12:27:38 -0700
IronPort-SDR: iRWFmJeMildnnrvB/O+fEtpGg1DxbYrk7abG35Fv4YgxBzP8hR3Sl5IYH4UcA62OR+tuDFj7GD
 PocmhsAs78QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,301,1580803200"; d="scan'208";a="420007836"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga005.jf.intel.com with ESMTP; 24 Mar 2020 12:27:36 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 24 Mar 2020 12:27:25 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Mar 2020 12:27:24 -0700
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Tue, 24 Mar 2020 12:27:24 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S40 v2 4/15] ice: Add support for
 tunnel offloads
Thread-Index: AQHV/iue7b6iXVC120iVfpT+LlVjoKhYJ6rQ
Date: Tue, 24 Mar 2020 19:27:24 +0000
Message-ID: <d3cb5854b8b54bd1a21ee871c11a72f7@intel.com>
References: <20200319201718.66672-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200319201718.66672-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S40 v2 4/15] ice: Add support for
 tunnel offloads
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
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony Nguyen
Sent: Thursday, March 19, 2020 1:17 PM
To: intel-wired-lan@lists.osuosl.org
Subject: [Intel-wired-lan] [PATCH S40 v2 4/15] ice: Add support for tunnel offloads

Create a boost TCAM entry for each tunnel port in order to get a tunnel PTYPE. Update netdev feature flags and implement the appropriate logic to get and set values for hardware offloads.

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
---
v2:
- Add reference counting for same port additions
- Removed parameter 'index' from ice_tunnel_port_in_use()
- Change message level for exceeding max tunnel ports and tunnel not found to info
- Redo description for ice_create_tunnel()
- Removed unneccesary casts
---
 drivers/net/ethernet/intel/ice/ice.h          |   4 +
 drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 530 +++++++++++++++++-
 .../net/ethernet/intel/ice/ice_flex_pipe.h    |   5 +
 .../net/ethernet/intel/ice/ice_flex_type.h    |  33 ++
 drivers/net/ethernet/intel/ice/ice_flow.c     |  36 +-
 drivers/net/ethernet/intel/ice/ice_flow.h     |   3 +
 .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |  25 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  94 +++-
 .../ethernet/intel/ice/ice_protocol_type.h    |   1 +
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 126 ++++-
 drivers/net/ethernet/intel/ice/ice_txrx.h     |   3 +
 drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  21 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 +
 14 files changed, 873 insertions(+), 14 deletions(-)


Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
