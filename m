Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2435C1DA505
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 00:53:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 99A8B88176;
	Tue, 19 May 2020 22:53:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ylOhI4gsM5r3; Tue, 19 May 2020 22:53:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15A2688158;
	Tue, 19 May 2020 22:53:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0CD711BF283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 22:53:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 071818769A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 22:53:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J-5zI216a5Pc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 22:53:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 77B6F8622A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 22:53:27 +0000 (UTC)
IronPort-SDR: wqfCKMoPAHuIO5AE48HofhMKVMnfsMpKF1CZxmYE2dUkZf675NQVtp4eSvHAKRQlphS/CO9Zuq
 3bkYnUZVTeQg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 15:53:26 -0700
IronPort-SDR: nKTbsCYzgP+JcScsxOxTpYh27usGUO8gRm2QO1LlWyhFrnpcIDYZPoG6OZy0u9psScbnkmfIMR
 KefAnvgTpBvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,411,1583222400"; d="scan'208";a="466307570"
Received: from stputhen-mobl1.amr.corp.intel.com (HELO ellie) ([10.209.5.127])
 by fmsmga006.fm.intel.com with ESMTP; 19 May 2020 15:53:26 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Andre Guedes <andre.guedes@intel.com>, Michal Kubecek <mkubecek@suse.cz>,
 netdev@vger.kernel.org
In-Reply-To: <158992801438.36166.9692784713665851855@twxiong-mobl.amr.corp.intel.com>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <20200516093317.GJ21714@lion.mk-sys.cz> <87sgfxox4x.fsf@intel.com>
 <158992801438.36166.9692784713665851855@twxiong-mobl.amr.corp.intel.com>
Date: Tue, 19 May 2020 15:53:26 -0700
Message-ID: <875zcro7tl.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: Jose.Abreu@synopsys.com, vladimir.oltean@nxp.com, po.liu@nxp.com,
 m-karicheri2@ti.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Andre Guedes <andre.guedes@intel.com> writes:

>> >
>> >>      active: active
>> >>      supported queues: 0xf
>
> Following the same rationale, is this 'supported queue' going aways as well?
>

I think so, with good error messages, when trying to set an express-only
queue as preemptible, no need to expose this information.


-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
