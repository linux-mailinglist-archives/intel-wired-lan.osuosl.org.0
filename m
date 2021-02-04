Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEF630FD4B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Feb 2021 20:52:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AEE5A86BCF;
	Thu,  4 Feb 2021 19:52:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GEScBfT9768n; Thu,  4 Feb 2021 19:52:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1782F86C2F;
	Thu,  4 Feb 2021 19:52:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8FC4D1BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Feb 2021 19:52:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 87E6B86BD3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Feb 2021 19:52:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Q5T2jCehD1H for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Feb 2021 19:52:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BD64286BCF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Feb 2021 19:52:21 +0000 (UTC)
IronPort-SDR: VVWzSAlB266aE29zDkd74DQjY5+lN/ELiXzI3ag/PObcSaxR1EdJqcvN52U3zl0IGcBc9VVUIa
 GR2qNPkPjvNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="161073657"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="161073657"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 11:52:21 -0800
IronPort-SDR: lk2OeIHmNPWbmvRojJjqR8Xtfh20RG7xmOB4Z1oM64zOBayunz7AhdCrNPMsooc6EW9bI/cxGe
 DT69vT3vA40Q==
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="434088875"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.212.188.246])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 11:52:20 -0800
Date: Thu, 4 Feb 2021 11:52:20 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210204115220.0000018d@intel.com>
In-Reply-To: <20210202133030.5760-5-alobakin@pm.me>
References: <20210202133030.5760-1-alobakin@pm.me>
 <20210202133030.5760-5-alobakin@pm.me>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH RESEND v3 net-next 4/5] net: use the
 new dev_page_is_reusable() instead of private versions
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
Cc: Randy Dunlap <rdunlap@infradead.org>, linux-mm@kvack.org,
 Jakub Sitnicki <jakub@cloudflare.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Dexuan Cui <decui@microsoft.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 John Hubbard <jhubbard@nvidia.com>, David Rientjes <rientjes@google.com>,
 Willem de Bruijn <willemb@google.com>, Salil Mehta <salil.mehta@huawei.com>,
 netdev@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 linux-kernel@vger.kernel.org, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Alexander Lobakin wrote:

> Now we can remove a bunch of identical functions from the drivers and
> make them use common dev_page_is_reusable(). All {,un}likely() checks
> are omitted since it's already present in this helper.
> Also update some comments near the call sites.
> 
> Suggested-by: David Rientjes <rientjes@google.com>
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Cc: John Hubbard <jhubbard@nvidia.com>
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

I don't know why it was missed in the series update, but:
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
