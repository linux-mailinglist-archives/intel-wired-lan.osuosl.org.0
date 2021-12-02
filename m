Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2002465E6A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Dec 2021 07:50:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D82940496;
	Thu,  2 Dec 2021 06:50:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vFdO_68MumcH; Thu,  2 Dec 2021 06:50:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42C0D403BA;
	Thu,  2 Dec 2021 06:50:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD8E31BF340
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 06:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA013403BA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 06:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0-lybISGXlsh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Dec 2021 06:50:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF145400DE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 06:50:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236866976"
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="236866976"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 22:50:37 -0800
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="512442638"
Received: from vidyasiv-mobl1.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.65.229])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 22:50:36 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Greg KH <gregkh@linuxfoundation.org>
In-Reply-To: <YahqnvgmT63iG48E@kroah.com>
References: <87r1awtdx3.fsf@intel.com>
 <20211201185731.236130-1-vinicius.gomes@intel.com>
 <YahqnvgmT63iG48E@kroah.com>
Date: Wed, 01 Dec 2021 22:50:36 -0800
Message-ID: <87ilw7ts8z.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igc: Avoid possible deadlock during
 suspend/resume
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
Cc: regressions@lists.linux.dev, netdev@vger.kernel.org, stable@vger.kernel.org,
 roots@gmx.de, intel-wired-lan@lists.osuosl.org, kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greg KH <gregkh@linuxfoundation.org> writes:

> On Wed, Dec 01, 2021 at 10:57:31AM -0800, Vinicius Costa Gomes wrote:
>> Inspired by:
>> https://bugzilla.kernel.org/show_bug.cgi?id=215129
>> 
>
> This changelog does not say anything at all, sorry.  Please explain what
> is happening here as the kernel documentation asks you to.

It was intended as just some patch for the reporter to try while
narrowing the problem down. Sorry for the noise.

I should have thought about removing stable from CC.


Thank you,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
