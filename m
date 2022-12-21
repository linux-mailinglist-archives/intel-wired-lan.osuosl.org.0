Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D942653454
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 17:49:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0DDB64055E;
	Wed, 21 Dec 2022 16:49:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DDB64055E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671641349;
	bh=xFwebZ/8F/vtkxab9RLKqSmeh6z5847YCfjVATmsBXg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MHxcm3TDDgctU2845jcSY79fsuN3E9hdvAN0mDXGZreG6GXs9kwiaubgOnOx1B8IV
	 JRKkxEmnT05o+rlUSTxC2k0H2HBFpaj9toIfb/iFI9rWS3Xm48vgI/PggupST62kX/
	 O/pvbAwptTbMF/SegdsYNCYhCfjoVvxwz9fMgLmK7/M2lizgddVlMjPOUZlEiw7Jov
	 IW08cWhjkBx36Ib9EnJZYeAebHg+iVXUHF6ZeFnkAKuryDUBgtmV72FD76b9zNlSBC
	 DsO1f3IghMZK2tGhedmAoYHCJIxkAIcvdE51ESNRFW4WAtjJrygX3ZTBVqtikvsHZ3
	 uemEJBLdpVO8w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l6cwiFfAhrOB; Wed, 21 Dec 2022 16:49:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 11F4F40523;
	Wed, 21 Dec 2022 16:49:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11F4F40523
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0B42F1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 16:49:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DBA57607A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 16:49:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DBA57607A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kTaew1q4_v60 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 16:49:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A1476058D
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A1476058D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 16:49:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="319969663"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="319969663"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 08:49:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="683858725"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="683858725"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga001.jf.intel.com with ESMTP; 21 Dec 2022 08:48:59 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 2BLGmwE3006846; Wed, 21 Dec 2022 16:48:58 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Date: Wed, 21 Dec 2022 17:48:57 +0100
Message-Id: <20221221164857.1190230-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221220184618.174143-1-benjamin.mikailenko@intel.com>
References: <20221220184618.174143-1-benjamin.mikailenko@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671641342; x=1703177342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DilE4ucAxK1r7kkg2R8pyLZmDfQMN41PxAbWyfuyrjE=;
 b=F1aOoqm5OCxjmUx+w7nOGVUQHOhVUS+OitZv5rfpdO/kJ/uk3qA2oy2Q
 qp5orSUM90ftBI/OyRltqHD+QC7pgs5rq7bsRsakmcJNcgF/0GUC3LJWO
 zh37lyUNknui+OqpkevWjipy1N+e2tubaXIM/csOnY/qyyLUfLxOL9JXK
 GoAkuD/+AHTrgMsykYb7tUApmbHhsU+fFMZ4m8NMLBfDLr3mEbjR6/zB/
 bS2eBG533mFtNPzZ8TwY628hneoA0iuNOA1UsjIZloaWH/T7Tc93mroUm
 Vn1Xloy+Hy64UtIuWS4oKOFkvkS2CA5vOnWlqEy7TDdhijrYUt1FyNRID
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F1aOoqm5
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Reset stats on queue
 change
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
Date: Tue, 20 Dec 2022 13:46:18 -0500

> Commit 288ecf491b16 ("ice: Accumulate ring statistics over reset")
> implemented functionality for interface statistics to persist over reset.
> This avoided the case where a reset happens in the background (for example
> a tx hang occourred triggering a reset), statistics set to zero, and the
> user checks ring statistics expecting them to be populated.
> 
> In the case of changing queues (for example "ethtool -L ethX combined 5"),
> this change caused statistics in the remaining queues (0-4) to persist. In
> this case, statistics should reset.
> 
> Fix this by clearing statistics when the number of queues changes.

Oh, sorry for the bad wording in my reply to v1. My question was
mainly why is it an issue that the statistics for the queues that
the user didn't touch doesn't get reset? As an user, I'd expect
the stats to persist if I didn't do anything with a queue, and in
case of reducing or increasing the queue count let's say between
3 and 8 I don't expect queues 0-2 to be changed anyhow.
So I realize what this commit is about and what it does do, but
I don't see any clear reasons for now why we should do that.

> 
> Fixes: 288ecf491b16 ("ice: Accumulate ring statistics over reset")
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> ---
> v2: Edited commit message
> 
>  drivers/net/ethernet/intel/ice/ice_lib.c | 65 ++++++++++++++++++++++++
>  1 file changed, 65 insertions(+)

[...]

> -- 
> 2.34.3

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
