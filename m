Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6F631450
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2019 19:58:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2776E884DC;
	Fri, 31 May 2019 17:58:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SY8AcE3SwhsO; Fri, 31 May 2019 17:58:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD9FC884E9;
	Fri, 31 May 2019 17:58:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EAE981BF616
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 17:58:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E5A7B884DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 17:58:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vgf5JITRoVdf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2019 17:58:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D50C4884DC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2019 17:58:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 10:58:17 -0700
X-ExtLoop1: 1
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga007.jf.intel.com with ESMTP; 31 May 2019 10:58:16 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 31 May 2019 10:58:16 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.200]) by
 ORSMSX160.amr.corp.intel.com ([169.254.13.155]) with mapi id 14.03.0415.000;
 Fri, 31 May 2019 10:58:16 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S6 1/7] i40e: fix 'Unknown bps'
 in dmesg for 2.5Gb/5Gb speeds
Thread-Index: AQHVFX8zljIEf3QmNEG6iGNuNNN6zaaFicKw
Date: Fri, 31 May 2019 17:58:16 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3DD58F@ORSMSX104.amr.corp.intel.com>
References: <20190528175921.30534-1-alice.michael@intel.com>
In-Reply-To: <20190528175921.30534-1-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmQ2OTZkYjktZDVjOS00ZjM5LTk0NDItZDI4Yjk4MzgwYjI4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiM0JDRzUzRWJFUzJUeXFhTGU4SFo4MW5hak5mTlNnQ2FQNys5ZnRNT1RJZ1ZJR1NZb29Nd01JZk1JNWNxR1pmVCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S6 1/7] i40e: fix 'Unknown bps'
 in dmesg for 2.5Gb/5Gb speeds
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
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Subject: [Intel-wired-lan] [next PATCH S6 1/7] i40e: fix 'Unknown bps' in
> dmesg for 2.5Gb/5Gb speeds
> 
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> This patch fixes 'NIC Link is Up, Unknown bps' message in dmesg for
> 2.5Gb/5Gb speeds. This problem is fixed by adding constants for
> VIRTCHNL_LINK_SPEED_2_5GB and VIRTCHNL_LINK_SPEED_5GB cases in the
> i40e_virtchnl_link_speed() function.
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_prototype.h | 4 ++++
>  include/linux/avf/virtchnl.h                     | 4 ++++
>  2 files changed, 8 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
