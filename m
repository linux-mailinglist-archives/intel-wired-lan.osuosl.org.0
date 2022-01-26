Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C973649D083
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jan 2022 18:15:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7FE5960B50;
	Wed, 26 Jan 2022 17:15:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oydk_oJLLMHU; Wed, 26 Jan 2022 17:15:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B6B360BD4;
	Wed, 26 Jan 2022 17:15:17 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D30B71BF417
 for <intel-wired-lan@osuosl.org>; Wed, 26 Jan 2022 17:15:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE69082F0F
 for <intel-wired-lan@osuosl.org>; Wed, 26 Jan 2022 17:15:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tZiIOzraIxnv for <intel-wired-lan@osuosl.org>;
 Wed, 26 Jan 2022 17:15:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 529C38175A
 for <intel-wired-lan@osuosl.org>; Wed, 26 Jan 2022 17:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643217302; x=1674753302;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=llaQFUUuZ8EtpCdtP8Jc9ig6Oa7wwb9bbrBClnyPQ2g=;
 b=YlWernRMr/8/OxZhDXPDmdBeuXYPlL1GNMkrs7821rkGw1H1dgHTPQeE
 O737bQTNekQBzD8+5ZFMfPwmrXqx1fReM2jhvvLwk1JB89M7dcp2PijbX
 Rd/CpFFQlp2VTbHX8PKTFnLmSismsfAZutgaBHgK2+NjQTl37BdMeDE7d
 t8An5+QkUKgNY+uh5GlwAJakytz/1nJ11T9D5H+EM3hZmxNToZauGD8E9
 O7rrUzp62YpbF06dG5p9FkH7Aur3Tks/UK1jUjBoWRjCfhbg4nx8Wjmgs
 dmsqe/bKlonhEUygabFURSk06UB7lkz0ygLfo0RJZM9rTd3q6nlYTwxW0 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="227271233"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="227271233"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 09:14:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="581167637"
Received: from dglazex-mobl3.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.16.112])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 09:14:10 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Corinna Vinschen <vinschen@redhat.com>, intel-wired-lan@osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <20220119145259.1790015-3-vinschen@redhat.com>
References: <20220119145259.1790015-1-vinschen@redhat.com>
 <20220119145259.1790015-3-vinschen@redhat.com>
Date: Wed, 26 Jan 2022 09:14:09 -0800
Message-ID: <87v8y6mnby.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 2/2 net-next v6] igb: refactor XDP
 registration
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

Corinna Vinschen <vinschen@redhat.com> writes:

> On changing the RX ring parameters igb uses a hack to avoid a warning
> when calling xdp_rxq_info_reg via igb_setup_rx_resources.  It just
> clears the struct xdp_rxq_info content.
>
> Instead, change this to unregister if we're already registered.  Align
> code to the igc code.
>
> Fixes: 9cbc948b5a20c ("igb: add XDP support")
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> ---

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
