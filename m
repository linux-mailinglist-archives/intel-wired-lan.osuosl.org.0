Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC1D5D838
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2019 00:53:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 988E885F3E;
	Tue,  2 Jul 2019 22:53:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R0805H-OUK8C; Tue,  2 Jul 2019 22:53:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D59488511C;
	Tue,  2 Jul 2019 22:53:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F37871BF84C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:53:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EA7AB81DFD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:53:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EQzHNZ3DYu3U for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 22:53:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4322F81B82
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 22:53:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 15:53:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="362841283"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by fmsmga006.fm.intel.com with ESMTP; 02 Jul 2019 15:53:50 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 2 Jul 2019 15:53:49 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.70]) by
 ORSMSX153.amr.corp.intel.com ([169.254.12.252]) with mapi id 14.03.0439.000;
 Tue, 2 Jul 2019 15:53:49 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S22 08/16] ice: Only bump Rx tail and
 release buffers once per napi_poll
Thread-Index: AQHVLEdcBIrb/9yrCUyH1jb21JJItqa3+VrA
Date: Tue, 2 Jul 2019 22:53:48 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3FBE28@ORSMSX104.amr.corp.intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
 <20190626092027.52845-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20190626092027.52845-8-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiM2Y0ZTZiYmItNzlhYi00N2Q3LWFjNTMtN2M2MTZkZDM4MGU3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicDU5NDA5dWc2SDNNamdnMktEa0RzOGJtZ2RkXC9nY0xza1NrcHBJZnk5b2pscER3K2NZbllaaEhYbnpUYklwUDgifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S22 08/16] ice: Only bump Rx tail and
 release buffers once per napi_poll
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
> Sent: Wednesday, June 26, 2019 2:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Creeley, Brett <brett.creeley@intel.com>
> Subject: [Intel-wired-lan] [PATCH S22 08/16] ice: Only bump Rx tail and
> release buffers once per napi_poll
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently we bump the Rx tail and release/give buffers to hardware every
> 16 descriptors. This causes us to bump Rx tail up to 4 times per napi_poll call.
> Also we are always bumping tail on an odd index and this is a problem
> because hardware ignores the lower 3 bits in the QRX_TAIL register. This is
> making it so hardware sees tail bumps only every 8 descriptors. Instead lets
> only bump Rx tail once per napi_poll if the value aligns with hardwares
> expectations of the lower 3 bits being cleared. Also only release/give Rx
> buffers once per napi_poll call.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 41 +++++++++++++++--------
>  1 file changed, 27 insertions(+), 14 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
