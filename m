Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E67C77D8548
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 16:53:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 05FB583E41;
	Thu, 26 Oct 2023 14:53:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 05FB583E41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698331997;
	bh=5PCWobkcOHR7A8CF2i8xP5VCAJ8+xjR6io7JHrKvDpM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PRQiVudav4Yf6uGUd3twxdIhcBRGjtJ/Abokf/q775qy2JJys9EyTsrZUFxy3DRps
	 oOXRgWEQYzWIrbZE0MmIdk7mseXiWwFu97ZIyCFV7Nf4COoPsp+2qX5fefJ1mbY2/u
	 v4wOFmHLrW4s3joF7TmWfV9oeVcW5HF7Ch2WnZTh+3a81MBv/Qd5BLk/5RhMC6DW8n
	 kOoSFLFJGam/UXhE3dgIWCwEZhxs3m/fDd1TWv1rIKn6VK3o/xMyV2PvReFlZThS4M
	 DyqljVGbTtqDcNlalDSPaFw5PdkAOPyZ4F8huNHsvTpSBNYFl+dZS81QJmRa8TzcC5
	 DtYexMrh2drqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 60Li5PemPS8t; Thu, 26 Oct 2023 14:53:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECDD783E3C;
	Thu, 26 Oct 2023 14:53:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECDD783E3C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 210901BF414
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 14:53:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EBBE841A00
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 14:53:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBBE841A00
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id np-21Kju1yuo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 14:53:10 +0000 (UTC)
Received: from relay.hostedemail.com (smtprelay0016.hostedemail.com
 [216.40.44.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 00BF140A01
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 14:53:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 00BF140A01
Received: from omf04.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay05.hostedemail.com (Postfix) with ESMTP id 4391440158;
 Thu, 26 Oct 2023 14:53:05 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf04.hostedemail.com (Postfix) with ESMTPA id 983F820027; 
 Thu, 26 Oct 2023 14:52:52 +0000 (UTC)
Message-ID: <a196427632d824ee0f39ef8da3188a0405bb2893.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Louis Peens <louis.peens@corigine.com>, Justin Stitt
 <justinstitt@google.com>
Date: Thu, 26 Oct 2023 07:52:51 -0700
In-Reply-To: <ZTp8VgdC5yVkrFeA@LouisNoVo>
References: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
 <20231025-ethtool_puts_impl-v1-2-6a53a93d3b72@google.com>
 <ZTp8VgdC5yVkrFeA@LouisNoVo>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 983F820027
X-Stat-Signature: f6rwzr5tdz6au99az5suny8a7mijkrbc
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1/Qdw/iYiftXcMZ8GOytXsi0vlklpywPbo=
X-HE-Tag: 1698331972-527693
X-HE-Meta: U2FsdGVkX1/1MIUVFb/Hgk2tNLjvKG+o6wsUTD1CdlUY3VOZyRBIATzUA9gR2f5zcRVjVw1mMT9BLUbdoKmRYvl1eUmaGLar8G99TydWQIQ3OljsmfFN4SqHRuQkRuOopphBbmW35d4zz2g2nnw9Z3NFEmutjwzMW4q3jNinJ5fRf8RwuSFJQhLcp7vLNPyMu7XW0l2SM83ttIlF4a/KXvtx2SAxqeTuejRFixLDJ5Ib2HqkMtyoPCgGfZtBapq75g7b2MlQXv3+j9NxTxVBCgZLU2L54BktcVcEEOFF0qnQfdR2RXb4BzFr6UmcB8s5r7V2B2RppmkIa9qglYe7WHfAC0kwp27f+MdiWaFxlAWenFcL6+2MYQnkwudNJ/7K
Subject: Re: [Intel-wired-lan] [PATCH 2/3] treewide: Convert some
 ethtool_sprintf() to ethtool_puts()
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
Cc: linux-hyperv@vger.kernel.org, Brett Creeley <brett.creeley@amd.com>,
 Ronak Doshi <doshir@vmware.com>,
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, Wei Liu <wei.liu@kernel.org>,
 Dexuan Cui <decui@microsoft.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Noam Dagan <ndagan@amazon.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Shay Agroskin <shayagr@amazon.com>, Kees Cook <keescook@chromium.org>,
 Haiyang Zhang <haiyangz@microsoft.com>, Nathan Chancellor <nathan@kernel.org>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Andy Whitcroft <apw@canonical.com>,
 drivers@pensando.io, Salil Mehta <salil.mehta@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Rasesh Mody <rmody@marvell.com>,
 David Arinzon <darinzon@amazon.com>, oss-drivers@corigine.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Saeed Bishara <saeedb@amazon.com>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Sudarsana Kalluru <skalluru@marvell.com>,
 Shannon Nelson <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2023-10-26 at 16:48 +0200, Louis Peens wrote:
> On Wed, Oct 25, 2023 at 11:40:33PM +0000, Justin Stitt wrote:
> > This patch converts some basic cases of ethtool_sprintf() to
> > ethtool_puts().

[30k of quoted content]

> Thanks Justin. From my perspective the series looks good, though I've
> not spent very long on it. For the nfp parts:
> 
> Acked-by: Louis Peens <louis.peens@corigine.com

Do please remember to trim your replies.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
