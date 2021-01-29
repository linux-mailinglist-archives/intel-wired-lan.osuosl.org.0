Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8177E308EE3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jan 2021 22:02:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F184886A6C;
	Fri, 29 Jan 2021 21:02:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0TWrwiDLVFXt; Fri, 29 Jan 2021 21:02:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B3FEF86A6F;
	Fri, 29 Jan 2021 21:02:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 02B061BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 078EC22FB9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:02:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OG9IFiKkFEOA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jan 2021 21:02:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 8FA4320465
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 21:02:11 +0000 (UTC)
IronPort-SDR: SFyY5ANifORtul7V5RUXhTqOY6EWBthRs4UDPZPf3aA7Vyeqaoddx0kjK4WiD8/wGJvoVd6Toy
 fs5fWnGRbzuQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="168147937"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="168147937"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 13:02:07 -0800
IronPort-SDR: WRXbI5a0a2lSURK7Xr+Kb73RU8Knx2kYK8+5YKwRrDalQfM+N1tz56QvtjlLDZxPBLbsnQF1Zr
 wiJYNCMM+VoA==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="389456096"
Received: from ndatiri-mobl.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.212.145.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 13:02:06 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20210126000228.gpyh3rrp662wysit@skbuf>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210122224453.4161729-6-vinicius.gomes@intel.com>
 <20210126000228.gpyh3rrp662wysit@skbuf>
Date: Fri, 29 Jan 2021 13:01:53 -0800
Message-ID: <877dnvtq2m.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 5/8] igc: Avoid TX Hangs
 because long cycles
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
Cc: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 "mkubecek@suse.cz" <mkubecek@suse.cz>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> On Fri, Jan 22, 2021 at 02:44:50PM -0800, Vinicius Costa Gomes wrote:
>> Avoid possible TX Hangs caused by using long Qbv cycles. In some
>> cases, using long cycles (more than 1 second) can cause transmissions
>> to be blocked for that time. As the TX Hang timeout is close to 1
>> second, we may need to reduce the cycle time to something more
>> reasonable: the value chosen is 1ms.
>> 
>> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
>> ---
>
> Don't you want this patch to go to 'net' and be backported?

Will propose this patch to 'net'. Thanks.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
