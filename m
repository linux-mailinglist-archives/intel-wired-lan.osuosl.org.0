Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA477199F9E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 22:00:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7213386D80;
	Tue, 31 Mar 2020 20:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ih4cfLk8KtEi; Tue, 31 Mar 2020 20:00:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9D3886D9B;
	Tue, 31 Mar 2020 19:59:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 98A9E1BF263
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 19:59:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 94492888EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 19:59:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9KbT1wfthAaz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2020 19:59:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0C73F888E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 19:59:58 +0000 (UTC)
IronPort-SDR: 71/BJATbVFz74yNk8XnOUVcIbDUG+FJnh04iSLLah03GC567T7O+IGhinKJQB2q4cnsECGYNvi
 ySobF4jo1+Kw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 12:59:57 -0700
IronPort-SDR: 930Idg4ZyK4BAqINkHI+ysEWW73AROYP6sdTze9p2mWqP+tHu94Y3pubkJ+S1NDrtZkM/A72Ui
 psNh3krf2UVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,328,1580803200"; d="scan'208";a="267396697"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga002.jf.intel.com with ESMTP; 31 Mar 2020 12:59:57 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.6]) by
 ORSMSX104.amr.corp.intel.com ([169.254.4.140]) with mapi id 14.03.0439.000;
 Tue, 31 Mar 2020 12:59:57 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 04/12] igc: Fix igc_uc_unsync()
Thread-Index: AQHV/XlL1Jnp5/mTt06/l9ReVi5FgahjMttg
Date: Tue, 31 Mar 2020 19:59:57 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B9722DDB8@ORSMSX103.amr.corp.intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
 <20200318230102.36952-5-andre.guedes@intel.com>
In-Reply-To: <20200318230102.36952-5-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 04/12] igc: Fix igc_uc_unsync()
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andre Guedes
> Sent: Wednesday, March 18, 2020 4:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 04/12] igc: Fix igc_uc_unsync()
> 
> In case igc_del_mac_filter() returns error, that error is masked
> since the functions always return 0 (success). This patch fixes
> igc_uc_unsync() so it returns whatever value igc_del_mac_filter()
> returns (0 on success, negative number on error).
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
