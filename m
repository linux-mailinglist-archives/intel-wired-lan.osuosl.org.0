Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3929E3090D7
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Jan 2021 01:12:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CDF14874F7;
	Sat, 30 Jan 2021 00:12:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JYak5stc6viW; Sat, 30 Jan 2021 00:12:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CE5D387223;
	Sat, 30 Jan 2021 00:12:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4221C1C116E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 00:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3DCED86F76
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 00:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lmGvZ5iDRn0A for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Jan 2021 00:12:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 945CB86F63
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 00:12:06 +0000 (UTC)
IronPort-SDR: 5Pyzw4u4O6Wf1MjKhIY7OlyGOEs2zRiE0ADWcZOUNgkLdG4CGqWojzsxbe31cNRczduny/LZ+/
 8qofmGFyittg==
X-IronPort-AV: E=McAfee;i="6000,8403,9879"; a="167599368"
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="167599368"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 16:12:05 -0800
IronPort-SDR: /XXIEtMSyiE26QmpZQt8h+eJapzva8LNhC5HhS9PuOmgm/Zpqg73J97YqcVC4RQplgw84YrZna
 ay+B30icH5JQ==
X-IronPort-AV: E=Sophos;i="5.79,386,1602572400"; d="scan'208";a="365539983"
Received: from ndatiri-mobl.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.212.145.249])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 16:12:04 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20210129233729.bjckcxcx45hueb2z@skbuf>
References: <20210122224453.4161729-1-vinicius.gomes@intel.com>
 <20210129233729.bjckcxcx45hueb2z@skbuf>
Date: Fri, 29 Jan 2021 16:11:50 -0800
Message-ID: <87tuqzqo55.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 0/8] ethtool: Add support
 for frame preemption
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

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> On Fri, Jan 22, 2021 at 02:44:45PM -0800, Vinicius Costa Gomes wrote:
>> This is still an RFC because two main reasons, I want to confirm that
>> this approach (per-queue settings via qdiscs, device settings via
>> ethtool) looks good, even though there aren't much more options left ;-)
>
> I don't want to bother you too much, but a consequence of putting the
> per-priority settings into tc-taprio is that those will spill over into
> other qdiscs too that have nothing to do with TSN, for whomever will
> need frame preemption without time-aware scheduling (and there are
> reasons to want that).
> So could we see in the next version the frame preemption bits added to
> tc-mqprio as well? I just want to make sure that we run this by the tc
> maintainers and that the idea gets their informed consent before we end
> up in a position where frame preemption with time-aware scheduling is
> done in one way, but frame preemption without time-aware scheduling is
> done another way.
> You should not need to change anything related to TC_SETUP_PREEMPT in
> the igc driver, so it should be just code addition.

Good suggestion. Will do.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
