Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F0C2FF896
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jan 2021 00:19:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C406327384;
	Thu, 21 Jan 2021 23:19:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uKY2W7Fj-mYU; Thu, 21 Jan 2021 23:19:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D1166273AC;
	Thu, 21 Jan 2021 23:19:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DEF61BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 23:19:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 49BEC8464C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 23:19:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UEuPuJmcFK88 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jan 2021 23:19:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BF6FC845D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 23:19:09 +0000 (UTC)
IronPort-SDR: vHOFhhsiDn0aRgbTkSxjFIxFsXPp1CbaxeH58DRy5IiHFjSjHjzsGogSAMm7rz3BBj85w+hlZp
 k3U+Ve1o4q2Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="166460211"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="166460211"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 15:19:09 -0800
IronPort-SDR: dLUa+otTXyjROyoleikc5ecb0unsRidSasWGWQUEobFyzdXDjSJL7xg3K6R1/HeHKlfOmlcu1o
 1PfAo5yrZT1Q==
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="392127285"
Received: from amgiffor-mobl1.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.212.124.114])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 15:19:07 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
In-Reply-To: <20210119182352.17635829@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
References: <20210119004028.2809425-1-vinicius.gomes@intel.com>
 <20210119004028.2809425-7-vinicius.gomes@intel.com>
 <20210119182352.17635829@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Date: Thu, 21 Jan 2021 15:18:56 -0800
Message-ID: <87v9bpx4in.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 6/8] igc: Add support for
 tuning frame preemption via ethtool
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
Cc: Jose.Abreu@synopsys.com, mkubecek@suse.cz, jiri@resnulli.us,
 vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com, m-karicheri2@ti.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jakub Kicinski <kuba@kernel.org> writes:

> On Mon, 18 Jan 2021 16:40:26 -0800 Vinicius Costa Gomes wrote:
>> +		NL_SET_ERR_MSG(extack, "Invalid value for add-frag-size");
>
> NL_SET_ERR_MSG_MOD

Will fix. Thanks.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
