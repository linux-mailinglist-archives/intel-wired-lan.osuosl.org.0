Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D017C9EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 19:07:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 636B387D9E;
	Wed, 31 Jul 2019 17:07:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6ssj1wpueJ9L; Wed, 31 Jul 2019 17:07:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BE25087D9C;
	Wed, 31 Jul 2019 17:07:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A96671BF23F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A281B8613C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h--3itubdA68 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 17:07:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6F14C86132
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:07:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 10:07:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="183759198"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga002.jf.intel.com with ESMTP; 31 Jul 2019 10:07:47 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX108.amr.corp.intel.com ([169.254.2.65]) with mapi id 14.03.0439.000;
 Wed, 31 Jul 2019 10:07:47 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S24 v2 01/12] ice: Allow egress
 control packets from PF_VSI
Thread-Index: AQHVRjO6kTUIWYiSHE+t8UJlo82hpKbk+Hug
Date: Wed, 31 Jul 2019 17:07:47 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40E84B@ORSMSX104.amr.corp.intel.com>
References: <20190729090454.5501-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20190729090454.5501-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiY2YzZjdhYzEtOTFkMi00ODM3LWFiZTgtNWNlYWM4ZThjZmI3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoid3BKSlByNGVcL3RVa1pHVG1UZTVKdVgrclFhaEhPYVNEV2xzQ0NHOG5xVTBac3pNZW9BN1wvWjBnUHhWeFppWVZZIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S24 v2 01/12] ice: Allow egress
 control packets from PF_VSI
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
> Behalf Of Tony Nguyen
> Sent: Monday, July 29, 2019 2:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S24 v2 01/12] ice: Allow egress control
> packets from PF_VSI
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> For control packets (i.e. LLDP packets) to be able to egress from the main VSI,
> a bit has to be set in the TX_descriptor.
> This should only be done for the main VSI and only if the FW LLDP agent is
> disabled.  A bit to allow this also has to be set in the VSI context.
> 
> Add the logic to add the necessary bits in the VSI context for the PF_VSI and
> the TX_descriptors for control packets egressing the PF_VSI.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  |  7 +++++++
> drivers/net/ethernet/intel/ice/ice_txrx.c | 11 ++++++++++-
>  2 files changed, 17 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
