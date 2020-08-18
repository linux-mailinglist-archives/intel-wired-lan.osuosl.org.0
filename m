Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA545248DD4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Aug 2020 20:19:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4CEFA8542A;
	Tue, 18 Aug 2020 18:19:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LHNaLEkaQocx; Tue, 18 Aug 2020 18:19:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAF2785585;
	Tue, 18 Aug 2020 18:19:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9FCCC1BF3D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 18:19:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 969E08531D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 18:19:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RkuzF1LdeZMs for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Aug 2020 18:19:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 090A6852CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 18:19:27 +0000 (UTC)
IronPort-SDR: xWAWLJcggdAvZ0L3PqLZM2qt3crskYNDGKupPhzv0Q3hJRUJLAi7UEZpJ20CLU20DWxo6V8Wgo
 L5eePXKc2fIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="134497092"
X-IronPort-AV: E=Sophos;i="5.76,328,1592895600"; d="scan'208";a="134497092"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 11:19:27 -0700
IronPort-SDR: APnWYWYVz59lmAcSlTdHQ8681VCYi07EVr2evcJG9SbYCNUOKNMFjB44fEa6sIVRqtYBdMJJ5L
 TrNByUh911FA==
X-IronPort-AV: E=Sophos;i="5.76,328,1592895600"; d="scan'208";a="441316287"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.212.158.55])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 11:19:27 -0700
Date: Tue, 18 Aug 2020 11:19:26 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Li RongQing <lirongqing@baidu.com>
Message-ID: <20200818111926.000028d9@intel.com>
In-Reply-To: <1597734477-27859-1-git-send-email-lirongqing@baidu.com>
References: <1597734477-27859-1-git-send-email-lirongqing@baidu.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH][v3] i40e: optimise prefetch page
 refcount
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 18 Aug 2020 15:07:57 +0800
Li RongQing <lirongqing@baidu.com> wrote:

> refcount of rx_buffer page will be added here originally, so prefetchw
> is needed, but after commit 1793668c3b8c ("i40e/i40evf: Update code to
>  better handle incrementing page count"), and refcount is not added
> everytime, so change prefetchw as prefetch,
> 
> now it mainly services page_address(), but which accesses struct page
> only when WANT_PAGE_VIRTUAL or HASHED_PAGE_VIRTUAL is defined
> otherwise it returns address based on offset, so we prefetch it
> conditionally
> 
> Jakub suggested to define prefetch_page_address in a common header
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Li RongQing <lirongqing@baidu.com>

This change looks fine to me, hopefully the more heavyweight
prefetch instruction doesn't impact performance. Were you able to test
any performance?

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
