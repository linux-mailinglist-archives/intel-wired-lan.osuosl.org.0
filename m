Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EDD15844D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2020 21:34:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AA8B5204AF;
	Mon, 10 Feb 2020 20:34:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id airIuAYRAQAd; Mon, 10 Feb 2020 20:34:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB74D204A9;
	Mon, 10 Feb 2020 20:34:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F31471BF29A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2020 20:34:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EB0FB845A0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2020 20:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qy4ZN3ijETLA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2020 20:34:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 666C0844D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2020 20:34:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 12:34:01 -0800
X-IronPort-AV: E=Sophos;i="5.70,426,1574150400"; d="scan'208";a="237191025"
Received: from unknown (HELO localhost) ([10.251.137.174])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 12:34:01 -0800
MIME-Version: 1.0
In-Reply-To: <20200207182443.1501016-2-vinicius.gomes@intel.com>
References: <20200207182443.1501016-1-vinicius.gomes@intel.com>
 <20200207182443.1501016-2-vinicius.gomes@intel.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
From: Andre Guedes <andre.guedes@linux.intel.com>
Message-ID: <158136683984.75536.11605147606262842969@1.0.0.127.in-addr.arpa>
User-Agent: alot/0.8.1
Date: Mon, 10 Feb 2020 12:33:59 -0800
Subject: Re: [Intel-wired-lan] [next-queue PATCH v2 1/2] igc: Add support
 for taprio offloading
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

Hi Vinicius,

Quoting Vinicius Costa Gomes (2020-02-07 10:24:42)
...
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
...
> +/* Transmit Scheduling */
> +#define IGC_TQAVCTRL_TRANSMIT_MODE_TSN 0x00000001
> +#define IGC_TQAVCTRL_ENHANCED_QAV      0x00000008
> +
> +#define IGC_TXQCTL_STRICT_CYCLE                0x00000002
> +#define IGC_TXQCTL_STRICT_END          0x00000004
> +#define IGC_TXQCTL_PREEMPTIBLE         0x00000008

It seems you missed removing IGC_TXQCTL_PREEMPTIBLE here. This macro is not
used anywhere in the code.

> --- /dev/null
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/* Copyright (c)  2018 Intel Corporation */

s/2018/2020 ?

Regards,

Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
