Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198587D7902
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 01:59:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0BCC4409A5;
	Wed, 25 Oct 2023 23:59:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0BCC4409A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698278349;
	bh=0gONc3uNQTSleKBwuD/Jt6IJGccCBxHGEbp5XQiHHcY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gjVUDC99q+iK+36LVmLs4PbscV2hDm4F3kE53PpUsWdDvdUkN9X13BISXP+dP+mhp
	 U8DnUtcHtavUctb5BWkQSB+xjz3Y7dnIzY0rqc/AkSCEKuTLR+L1X2O3BwqeIvznKV
	 t6ZbiTUZnEh0QPyxcy74wE93iyff8X7NK5ujmQJ7o29Pt7Aa5U0iUXhL5zgWPqj6eX
	 bg94/KOERz0kJX8VQAVRcn95v4ommniN2ve17BBbt1XI5jft/djv4nobz1p7gR6FUa
	 zD+ubt1XuKhPWiTfyvaqr6efwQJyK7L+1OmYCNFk4pJwgXi/62jnLeRqSKiDefQDIt
	 TWgLjEIUMujWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yeVsB5fuJ78l; Wed, 25 Oct 2023 23:59:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A80940970;
	Wed, 25 Oct 2023 23:59:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A80940970
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6B5D81BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:59:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 432A960E1B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:59:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 432A960E1B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ehUEBs8iBzr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 23:59:00 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 25 Oct 2023 23:58:59 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E0F1460BE2
Received: from relay.hostedemail.com (smtprelay0015.hostedemail.com
 [216.40.44.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E0F1460BE2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:58:59 +0000 (UTC)
Received: from omf06.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay08.hostedemail.com (Postfix) with ESMTP id 73084140753;
 Wed, 25 Oct 2023 23:53:10 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf06.hostedemail.com (Postfix) with ESMTPA id EB8562000F; 
 Wed, 25 Oct 2023 23:52:58 +0000 (UTC)
Message-ID: <c7e45f79e04cf28b69300cc12cf47267fb216955.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Justin Stitt <justinstitt@google.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Shay Agroskin
 <shayagr@amazon.com>, Arthur Kiyanovski <akiyano@amazon.com>, David Arinzon
 <darinzon@amazon.com>, Noam Dagan <ndagan@amazon.com>, Saeed Bishara
 <saeedb@amazon.com>, Rasesh Mody <rmody@marvell.com>, Sudarsana Kalluru
 <skalluru@marvell.com>, GR-Linux-NIC-Dev@marvell.com, Dimitris Michailidis
 <dmichail@fungible.com>, Yisen Zhuang <yisen.zhuang@huawei.com>, Salil
 Mehta <salil.mehta@huawei.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>,  Tony Nguyen <anthony.l.nguyen@intel.com>,
 Louis Peens <louis.peens@corigine.com>, Shannon Nelson
 <shannon.nelson@amd.com>, Brett Creeley <brett.creeley@amd.com>, 
 drivers@pensando.io, "K. Y. Srinivasan" <kys@microsoft.com>, Haiyang Zhang
 <haiyangz@microsoft.com>, Wei Liu <wei.liu@kernel.org>, Dexuan Cui
 <decui@microsoft.com>, Ronak Doshi <doshir@vmware.com>, VMware PV-Drivers
 Reviewers <pv-drivers@vmware.com>, Andy Whitcroft <apw@canonical.com>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Lukas Bulwahn
 <lukas.bulwahn@gmail.com>
Date: Wed, 25 Oct 2023 16:52:58 -0700
In-Reply-To: <20231025-ethtool_puts_impl-v1-3-6a53a93d3b72@google.com>
References: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
 <20231025-ethtool_puts_impl-v1-3-6a53a93d3b72@google.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-Stat-Signature: ewynon9iqkxk4ba7ojpnwtcnyur8eded
X-Rspamd-Server: rspamout07
X-Rspamd-Queue-Id: EB8562000F
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX19HM4U+AZp5TxLK9aKEhza6ficBJMSjAYo=
X-HE-Tag: 1698277978-811897
X-HE-Meta: U2FsdGVkX1+p9+z8yCq32YY8S2DSMu0GtmU5Y2BLTOHLbVa47GMVGnlUfueykHLbFBJzUqiIuNUoLTjPNpuPmPmdObkyQyyYuvVzxDUXUYBXVjgtSZL2VLZt0M+ihq91yI+KJMnhw13lDleMsbRbUz2084V9BtLz3jRVgcLorLaY772BDVcKhBSdvFtDf2GPoSWp62x76n++3gowAjGE0QzGeGP1a3j/o4yx5i3/j7G9kDn6arjCylGwRoNsTERruOxHd2GpijuQvv1XVYKqXSIlXskZ2U42iC6tNJZVsKH071QZzpcUdpEeBh6ZYV0q
Subject: Re: [Intel-wired-lan] [PATCH 3/3] checkpatch: add ethtool_sprintf
 rules
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
Cc: linux-hyperv@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 netdev@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 oss-drivers@corigine.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2023-10-25 at 23:40 +0000, Justin Stitt wrote:
> Add some warnings for using ethtool_sprintf() where a simple
> ethtool_puts() would suffice.
> 
> The two cases are:
> 
> 1) Use ethtool_sprintf() with just two arguments:
> >       ethtool_sprintf(&data, driver[i].name);

OK.

> or
> 2) Use ethtool_sprintf() with a standalone "%s" fmt string:
> >       ethtool_sprintf(&data, "%s", driver[i].name);

I'm rather doubt this is really desired or appropriate.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
