Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C8E31457
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2019 20:00:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6309876BE;
	Fri, 31 May 2019 18:00:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ThWjy0SK+323; Fri, 31 May 2019 18:00:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 819718748E;
	Fri, 31 May 2019 18:00:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4059C1BF616
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 18:00:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3DC7C884DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 18:00:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ea0iZrG+wgQN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2019 18:00:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0A463884DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 18:00:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 11:00:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,535,1549958400"; d="scan'208";a="180411265"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga002.fm.intel.com with ESMTP; 31 May 2019 11:00:36 -0700
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 31 May 2019 11:00:35 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.200]) by
 ORSMSX161.amr.corp.intel.com ([169.254.4.187]) with mapi id 14.03.0415.000;
 Fri, 31 May 2019 11:00:35 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S6 6/7] i40e: Fix descriptor
 count manipulation
Thread-Index: AQHVFX82hlpJjXHxZE24rRkkDexBpqaFim2Q
Date: Fri, 31 May 2019 18:00:35 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3DD5DF@ORSMSX104.amr.corp.intel.com>
References: <20190528175921.30534-1-alice.michael@intel.com>
 <20190528175921.30534-6-alice.michael@intel.com>
In-Reply-To: <20190528175921.30534-6-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDhlODYxZTQtNTc2NS00MzE2LWJiZjAtNTc4NjBkZjRjMjBhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZWs4Mlg2TyszY25BXC9VdklDUllNVE1GY01nUmtXMFFTQ2Y4VSt4WGdDUXA0b3N6U3ZJTTFKaDhNZ3pHd3M1Z2sifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S6 6/7] i40e: Fix descriptor
 count manipulation
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

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Alice Michael
> Sent: Tuesday, May 28, 2019 10:59 AM
> To: alice.micheal@intel.com; intel-wired-lan@lists.osuosl.org
> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Subject: [Intel-wired-lan] [next PATCH S6 6/7] i40e: Fix descriptor count
> manipulation
> 
> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> 
> Changing descriptor count via 'ethtool -G' is not persistent across resets.
> When PF reset occurs, we roll back to the default value of vsi->num_desc,
> which is used then in i40e_alloc_rings to set descriptor count. XDP does a PF
> reset so when user has changed the descriptor count and load XDP program,
> the default count will be back there.
> 
> To fix this:
>   * introduce new VSI members - num_tx_desc and num_rx_desc in favour
> of
>     num_desc
>   * set them in i40e_set_ringparam to user's values
>   * set them to default values in i40e_set_num_rings_in_vsi only when they
>     don't have previous values
> 
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        |  3 +-
>  .../net/ethernet/intel/i40e/i40e_debugfs.c    |  5 +--
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  4 +++
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 36 +++++++++++++------
>  4 files changed, 34 insertions(+), 14 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
