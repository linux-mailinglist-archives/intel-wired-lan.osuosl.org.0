Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 316A914AC88
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jan 2020 00:19:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D51AC85BCC;
	Mon, 27 Jan 2020 23:19:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZTr+ZY8NLvqf; Mon, 27 Jan 2020 23:19:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08A4485AD6;
	Mon, 27 Jan 2020 23:19:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8DDE31BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 23:19:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 898E184B01
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 23:19:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q7N_01C9XJIB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2020 23:19:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1048B84ADA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2020 23:19:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 15:18:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,371,1574150400"; d="scan'208";a="427463662"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga005.fm.intel.com with ESMTP; 27 Jan 2020 15:18:59 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 27 Jan 2020 15:18:59 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 27 Jan 2020 15:18:58 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 27 Jan 2020 15:18:58 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S38 12/15] ice: replace "fallthrough"
 comments with fallthrough reserved word
Thread-Index: AQHV0X9bgpTyE9v3ikG2K2DV8CWZ26f/LTyg
Date: Mon, 27 Jan 2020 23:18:58 +0000
Message-ID: <cb08a6399dca4d4ca992d104221d200e@intel.com>
References: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
 <20200122152138.41585-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20200122152138.41585-12-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjEwZjYzZjctNjUyYi00MzAzLTg1OTctN2ZiZWNjMzBiZTdjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiYVp2eFN2eTMxTlhpRUdpWFdadVoraVZaRVY2TFg2cW5GdW9KZ1Z1R0Y0dmc4Zndoc08waFB5b2Y2UmtacWtzdiJ9
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S38 12/15] ice: replace "fallthrough"
 comments with fallthrough reserved word
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
> Sent: Wednesday, January 22, 2020 7:22 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S38 12/15] ice: replace "fallthrough"
> comments with fallthrough reserved word
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> "fallthrough" comments are used in switch case statements to explicitly
> indicate the code is intended to fall through to the following statement.
> Different variants of "fallthough" are acceptable, e.g. "fall through",
> "fallthrough", "Fall-through".  The GCC compiler has an optional warning
> (-Wimplicit-fallthrough[=n]) to warn when such a comment is not present;
> the default version of which is enabled when compiling the Linux kernel.
> 
> There have been recent discussions in kernel mailing lists regarding replacing
> non-standardized "fallthrough" comments with the pseudo-reserved word
> 'fallthrough' which will be defined as __attribute__ ((fallthrough)) for
> versions of gcc that support it (i.e. gcc 7 and newer) or as a nop for versions
> that do not.  Replace "fallthrough" comments with fallthrough reserved
> word.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_main.c   | 2 +-
>  drivers/net/ethernet/intel/ice/ice_switch.c | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_txrx.c   | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_xsk.c    | 4 ++--
>  5 files changed, 9 insertions(+), 9 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
