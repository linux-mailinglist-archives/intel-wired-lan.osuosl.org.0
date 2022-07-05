Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A3556671B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jul 2022 11:54:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8056D82FE4;
	Tue,  5 Jul 2022 09:54:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8056D82FE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657014876;
	bh=Vhu1q1gulnqZB/1xtv/nq/vY85KjgSgGPHiEJCqBWIM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TfUB5VqVDummvph7aUkhZwk7ubRJQi3C89J/DLFokkVthm2sovEw12AcbFka+94OV
	 n96KUap0+r7n/W9jD0+9T/4FfTkG1ykjLd98H8htQNJAQoz1FjCbWGXroBwuZsCOV7
	 c8lrlh6HTayRYDBauSC8CD77I42QjmYrMYvS3KWx/CPCMlRVOkW5zPVsQ1btJqEWiC
	 H0hOSUG64am3Mzsazqo3GD6hoR62bmpqzfJW1ho0NUEJO7Uu0KCTDxPfqY8gJTWPDa
	 gixn/MoJ+XJigMHDDDhVYncAWBDfuY6cYEIdZ8/hPYkiaJE8qtlGN/gfrxYfw8GWpU
	 QtBvQaCzvIIBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wquManQ4bupi; Tue,  5 Jul 2022 09:54:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A3B282FBE;
	Tue,  5 Jul 2022 09:54:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A3B282FBE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3DDDE1BF831
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 09:54:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 109D382FBE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 09:54:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 109D382FBE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BhR_jqUsmx4w for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jul 2022 09:54:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B58C801CC
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5B58C801CC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jul 2022 09:54:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="263733886"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="263733886"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 02:54:19 -0700
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="682458557"
Received: from mszycik-mobl.ger.corp.intel.com (HELO [10.249.130.161])
 ([10.249.130.161])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 02:54:14 -0700
Message-ID: <7aa3a974-6575-ade6-b863-feb25736ec0f@linux.intel.com>
Date: Tue, 5 Jul 2022 11:54:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: Guillaume Nault <gnault@redhat.com>
References: <20220629143859.209028-1-marcin.szycik@linux.intel.com>
 <20220629143859.209028-5-marcin.szycik@linux.intel.com>
 <20220630231244.GC392@debian.home>
 <7a706a7e-d3bd-b4da-fa68-2cabf3e75871@linux.intel.com>
In-Reply-To: <7a706a7e-d3bd-b4da-fa68-2cabf3e75871@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657014869; x=1688550869;
 h=message-id:date:mime-version:subject:from:to:cc:
 references:in-reply-to:content-transfer-encoding;
 bh=gIcwHGzRZyNR/0x67X3V9Z1F/C2CvuH2v4w728BkwJg=;
 b=kOgTcd9t3c6O3FJ70BhlXLLju7eQ5Eo30pA6pLDUJvhSSdkoPnXceaxQ
 VJhTmJ0jP9CqZDkvDtR9Sick4/tM2vJh5laEwdP4WIRNfjCOp2x7R06Qb
 e062tglW+9nqbLtf0zINP7kBeUj2fudp1RnXZUeLibGmp7iVf8isdpZu4
 mNBADgeTr1qA+iY02P5liGaldIRp0mnIQb76r4voraHIRU/YqVV4mepA/
 h1ctXvMO4mxJ7IjVQbVYBdn+abGQXxWIMUpg+yKAYacOdPNM8uMJjUlMc
 BMqG0raHp37y2yGnZIL+64GT2EdTsXdR6eXu6z4oKZGsDAdLrt0fMKqtD
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kOgTcd9t
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v3 4/4] ice: Add support
 for PPPoE hardware offload
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
Cc: simon.horman@corigine.com, kurt@linutronix.de, paulb@nvidia.com,
 edumazet@google.com, boris.sukholitko@broadcom.com, jiri@resnulli.us,
 paulus@samba.org, jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, zhangkaiheb@126.com, pablo@netfilter.org,
 baowen.zheng@corigine.com, komachi.yoshiki@gmail.com, jhs@mojatatu.com,
 mostrows@earthlink.net, xiyou.wangcong@gmail.com, pabeni@redhat.com,
 netdev@vger.kernel.org, gustavoars@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 01-Jul-22 18:12, Marcin Szycik wrote:
> 
> 
> On 01-Jul-22 01:12, Guillaume Nault wrote:
>> On Wed, Jun 29, 2022 at 04:38:59PM +0200, Marcin Szycik wrote:
>>> Add support for creating PPPoE filters in switchdev mode. Add support
>>> for parsing PPPoE and PPP-specific tc options: pppoe_sid and ppp_proto.
>>>
>>> Example filter:
>>> tc filter add dev $PF1 ingress protocol ppp_ses prio 1 flower pppoe_sid \
>>>     1234 ppp_proto ip skip_sw action mirred egress redirect dev $VF1_PR
>>>
>>> Changes in iproute2 are required to use the new fields.
>>>
>>> ICE COMMS DDP package is required to create a filter as it contains PPPoE
>>> profiles. Added a warning message when loaded DDP package does not contain
>>> required profiles.
>>>
>>> Note: currently matching on vlan + PPPoE fields is not supported. Patch [0]
>>> will add this feature.
>>>
>>> [0] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20220420210048.5809-1-martyna.szapar-mudlaw@intel.com
>>
>> Out of curiosity, can ice direct PPPoE Session packets to different
>> queues with RSS (based on the session ID)?
> 
> Hardware should support it, but I'm not sure if it's possible with the current driver and how to configure it. I'll try to find out.

From what I understand, currently it's not possible to configure RSS for PPPoE session id, because ethtool does not support PPPoE.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
