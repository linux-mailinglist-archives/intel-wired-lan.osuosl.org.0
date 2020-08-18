Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8ED249034
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Aug 2020 23:36:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8892985BCD;
	Tue, 18 Aug 2020 21:36:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OKTPD-aDaWrP; Tue, 18 Aug 2020 21:36:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D5E385B3B;
	Tue, 18 Aug 2020 21:36:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 78A311BF973
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 21:36:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 625292052C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 21:36:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4O6worD43T78 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Aug 2020 21:36:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id A602C2002A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 21:36:16 +0000 (UTC)
IronPort-SDR: uW0rfvIPpE7+sI1r6Km4+PhBlXJm+BSiXVfeHe8TFI/CTvwPYKbAmzooxsGbWEOkDhYVG5VnTG
 7s9X1ir4GwhQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="154271835"
X-IronPort-AV: E=Sophos;i="5.76,328,1592895600"; d="scan'208";a="154271835"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 14:36:16 -0700
IronPort-SDR: 00/ac6mPBm+FzCg5DRXEe2w+P+kvzlp+oeclTGm/weHV8pdlzKqomlTIhGwxArRFti3oVsjQzC
 YxSwW4OSlu1w==
X-IronPort-AV: E=Sophos;i="5.76,328,1592895600"; d="scan'208";a="320240400"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.212.158.55])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 14:36:15 -0700
Date: Tue, 18 Aug 2020 14:36:15 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20200818143615.00000f16@intel.com>
In-Reply-To: <20200817231231.2971207-1-vinicius.gomes@intel.com>
References: <20200817231231.2971207-1-vinicius.gomes@intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: Fix wrong timestamp latency
 numbers
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
Cc: andre.guedes@intel.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vinicius Costa Gomes wrote:

> The previous timestamping latency numbers were obtained by
> interpolating the i210 numbers with the i225 crystal clock value. That
> calculation was wrong.
> 
> Use the correct values from real measurements.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Is this targeted at net or net-next, and because it is a fix I
recommend you have subject
[PATCH net 1/2]

and you should include a "Fixes:" tag since this driver has been
released in previous kernels.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
