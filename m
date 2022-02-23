Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B834C1910
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 17:51:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94D5D60F99;
	Wed, 23 Feb 2022 16:51:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZNajIQ_jd_LN; Wed, 23 Feb 2022 16:51:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8CF1260F94;
	Wed, 23 Feb 2022 16:51:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4FE451BF5F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 16:51:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 32D4140142
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 16:51:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AM1e0Ss_Oo_T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 16:51:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EE903400CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 16:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645635109; x=1677171109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=afbGWqymUY76jIqJ6bmm+CLNENxvaOdqrhrAxqpsVws=;
 b=MJV97fdz1POTcAAqDkSDAZ7G7Jdp3BZYzR9752MCT7R82e54va2CCJ77
 TdjUyG3mqzl+Smo4pajN5ggm7wnyqY0wR5XfN4nbKwEOs/oxdoYhzBuYl
 wAohL6poqAqsrOn/78Ro45Yj1WEQSwIvoGuCikQzLJZCAEp85M0+BDja6
 S0gNgRjub46NhhihT0xOf2UEI3HCLyuVYoYzpjmf+610sSO8bMhWgkIPR
 9I0NGapXVDYmVcy20rGxeEzFLfpMZ9+pCTaJWjrD4YV4zuEk3LGSaRrO5
 TI9QP2nUK1JGDGig1jnWqobd9027mKZUfCSt2rxJukIRM4axTxQg+Peed Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="312736072"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="312736072"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 08:45:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="637495403"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 23 Feb 2022 08:44:59 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 21NGiwCC015571; Wed, 23 Feb 2022 16:44:58 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Mateusz Palczewski <mateusz.palczewski@intel.com>
Date: Wed, 23 Feb 2022 17:44:12 +0100
Message-Id: <20220223164412.289710-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220223123549.29391-1-mateusz.palczewski@intel.com>
References: <20220223123549.29391-1-mateusz.palczewski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/8] iavf: Rework mutexes for
 better synchronisation
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
Cc: intel-wired-lan@lists.osuosl.org, Phani Burra <phani.r.burra@intel.com>,
 SlawomirX Laba <slawomirx.laba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mateusz Palczewski <mateusz.palczewski@intel.com>
Date: Wed, 23 Feb 2022 13:35:49 +0100

First of all, please check your git-send-email settings.
Your patches don't have "In-Reply-To" and "References" headers,
which mean that they won't be represented as a series in Patchwork
and as an e-mail thread in list archivies or just mailboxes.
All the patches should have the ID of the cover letter (which I
haven't received at all, did you compose it?) in both headers to
be correctly represented.

> From: SlawomirX Laba <slawomirx.laba@intel.com>

"Slawomir" with no X I guess?
It's currently inconsistent with the Signed-off-by, and generally
people outside Intel don't know (and shouldn't care) what this X
does mean.
So please fix in v2.

> 
> The driver used to crash in multiple spots when put to stress testing
> of the init, reset and remove paths.
> 
> The user would experience call traces or hangs when creating,
> resetting, removing VFs. Depending on the machines, the call traces
> are happening in random spots, like reset restoring resources racing
> with driver remove.
> 
> Make adapter->crit_lock mutex a mandatory lock for guarding the
> operations performed on all workqueues and functions dealing with
> resource allocation and disposal.
> 
> Make __IAVF_REMOVE a final state of the driver respected by
> workqueues that shall not requeue, when they fail to obtain the
> crit_lock.
> 
> Make the IRQ handler not to queue the new work for adminq_task
> when the __IAVF_REMOVE state is set.
> 
> Fixes: 5ac49f3c2702 ("iavf: use mutexes for locking of critical sections")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>

Here's a correct signature for the reference.

> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      |  1 -
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 66 +++++++++++----------
>  2 files changed, 36 insertions(+), 31 deletions(-)
> 

--- 8< ---

> -- 
> 2.27.0

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
