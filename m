Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 242EC4D2E14
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Mar 2022 12:32:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C4F8842A3;
	Wed,  9 Mar 2022 11:32:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CePSSJ1yE929; Wed,  9 Mar 2022 11:32:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71A5184297;
	Wed,  9 Mar 2022 11:32:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C8BDF1BF86B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 11:32:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B69F784297
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 11:32:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9PiqIU6denkt for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Mar 2022 11:32:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3145F84258
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Mar 2022 11:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646825569; x=1678361569;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=pZh6tggFD0k+hx+94LfOfVeWHwnnjq6x1VyVrjGwjL4=;
 b=kGXjPPhwMhIsICraiQD3CWUQCS44qhXjoEcGxW374434L0hx785E+cVa
 3QocMkDeQ7p/8/zx6e8BirTiit/O5F7EUFzKLT4/zXZpRUXCtsysQmPv0
 1T2jG2ZOLHeUSOj03yLscO6OA0nXmyTz6cSE2ycrsRa3H+5LItyrvneVw
 AAbgWG1jhbCSRMxM4WX8gsLxvCezo1c1kLIDGF03jjuf0cQYtNorlB9ud
 FbRDjw2NoscMPuUDpobqaZ/ez2s0hiJxJNSMq0Ya2tG0XOL1ce5J9UqAg
 5ztri4TrNy4kf1z7GXmQCo4gxJU5a43h9T2m4Qj1mzEVmJz/1Pl5H0Cjs A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="252524174"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="252524174"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 03:32:25 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="554082214"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 03:32:21 -0800
Date: Wed, 9 Mar 2022 03:33:44 -0500
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <YihmaGhvS0PlndgM@localhost.localdomain>
References: <20220304164048.476900-1-marcin.szycik@linux.intel.com>
 <20220304164048.476900-8-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220304164048.476900-8-marcin.szycik@linux.intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 7/7] ice: Support GTP-U
 and GTP-C offload in switchdev
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org,
 osmocom-net-gprs@lists.osmocom.org, jhs@mojatatu.com, laforge@gnumonks.org,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com, kuba@kernel.org,
 davem@davemloft.net, pablo@netfilter.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi

ice part looks fine, thanks!

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Regards, Michal
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
