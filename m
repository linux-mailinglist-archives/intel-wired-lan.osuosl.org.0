Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7990326999F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 01:24:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 31AE987019;
	Mon, 14 Sep 2020 23:24:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8VBm7WBC5Zbj; Mon, 14 Sep 2020 23:24:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 258C287041;
	Mon, 14 Sep 2020 23:24:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB26F1BF348
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 23:24:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E69AF851CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 23:24:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ySQS8ZfO_yK2 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Sep 2020 23:24:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6CC688486F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 23:24:20 +0000 (UTC)
IronPort-SDR: 9d/izpzchWCCLdxYsW4GmL+BJdPC47VTSUkCsPDRa6UyRW2cqw+sPdcnrAQFmHj1+l9FP6VEtu
 XE2Ulm6Msv1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="177240488"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="177240488"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 16:24:19 -0700
IronPort-SDR: nWzgMFRAmFm4INASCsK2bT9OmnJmxRtDwVU2CpHnG313JE0+v7F457PtMFnwbvNaicBIVZV8rn
 bShmDr99W0PA==
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="482534876"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.209.55.36])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 16:24:18 -0700
Date: Mon, 14 Sep 2020 16:24:18 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Li RongQing <lirongqing@baidu.com>
Message-ID: <20200914162418.00007393@intel.com>
In-Reply-To: <1598592392-30673-1-git-send-email-lirongqing@baidu.com>
References: <1598592392-30673-1-git-send-email-lirongqing@baidu.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH][next][v2] iavf: use kvzalloc instead
 of kzalloc for rx/tx_bi buffer
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
Cc: netdev@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Li RongQing wrote:

> when changes the rx/tx ring to 4096, kzalloc may fail due to
> a temporary shortage on slab entries.
> 
> so using kvmalloc to allocate this memory as there is no need
> that this memory area is physical continuously.
> 
> and using __GFP_RETRY_MAYFAIL to allocate from kmalloc as
> far as possible, which can reduce TLB pressure than vmalloc
> as suggested by Eric Dumazet

This change is no good, it's using RETRY_MAYFAIL but still using
v*alloc.

Please see my replies to the i40e version of the patch. I don't think
we should apply these.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
