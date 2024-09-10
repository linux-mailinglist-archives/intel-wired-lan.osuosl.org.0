Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46371972A50
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Sep 2024 09:10:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0BBE41998;
	Tue, 10 Sep 2024 07:10:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wLks7OE0oE-J; Tue, 10 Sep 2024 07:10:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24A71419A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725952257;
	bh=3k/PuqqZCJMf6BhgNg/TMayRLzDJu21Un4z8h5nNYBI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1vCHEo9MacTk17Q3J6//Cjq54wAPk9E2rsnLMsBoRWe1J8ivEBc0lGJ/Yyg/ilTiF
	 Lzyj49nR8Cu8S1IfjrGGauL94zOKy3mDFSsoQBCdGtrFxmRlFVXurMcuxuUOQV36Cm
	 oHungbhvb/OUoO/QF+54yjogNAUJ2cLjKiobk+JCio4Ksc3dnsyS4kJMakn/48FZOS
	 7+aX4eRteHYjPJ8v2PpAI3koWzzXeDcbkv8q70AKBErZKYuSY0WxH/g8qFH/TZEI0a
	 w0ayMlNj4JkTjItLzsCinUTwBaRsTfb6EV87vIzF6/Rx9HmMCJiJpPpJg2BiVsz9YL
	 kwmYLQhgXzrxQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24A71419A6;
	Tue, 10 Sep 2024 07:10:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 469101BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 07:10:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 11B3B60837
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 07:10:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4se4vlGs78pB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Sep 2024 07:10:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 76FF66080F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76FF66080F
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 76FF66080F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Sep 2024 07:10:14 +0000 (UTC)
Received: from [141.14.12.127] (g127.RadioFreeInternet.molgen.mpg.de
 [141.14.12.127])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 20F1561E5FE05;
 Tue, 10 Sep 2024 09:09:38 +0200 (CEST)
Message-ID: <09022c4f-37bf-4119-bf64-87e82af3673e@molgen.mpg.de>
Date: Tue, 10 Sep 2024 09:09:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paolo Abeni <pabeni@redhat.com>
References: <cover.1725919039.git.pabeni@redhat.com>
 <4bd304768d7ef1fdee5033b8fe1788092ac0af38.1725919039.git.pabeni@redhat.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <4bd304768d7ef1fdee5033b8fe1788092ac0af38.1725919039.git.pabeni@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH v7 net-next 01/15] genetlink: extend
 info user-storage to match NL cb ctx
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
Cc: Donald Hunter <donald.hunter@gmail.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Jakub Kicinski <kuba@kernel.org>, edumazet@google.com,
 Madhu Chittim <madhu.chittim@intel.com>, anthony.l.nguyen@intel.com,
 Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Paolo,


Thank you for your patch.

Am 10.09.24 um 00:09 schrieb Paolo Abeni:
> This allows a more uniform implementation of non-dump and dump
> operations, and will be used later in the series to avoid some
> per-operation allocation.
> 
> Additionally rename the NL_ASSERT_DUMP_CTX_FITS macro, to
> fit a more extended usage.

Should a resent be necessary, you could also mention the new name 
`NL_ASSERT_CTX_FITS` in the commit message. (Maybe even a separate 
commit, so the actual change is easier to review.)

> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Reviewed-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Paolo Abeni <pabeni@redhat.com>
> ---
>   drivers/net/vxlan/vxlan_mdb.c        | 2 +-
>   include/linux/netlink.h              | 5 +++--
>   include/net/genetlink.h              | 8 ++++++--
>   net/core/netdev-genl.c               | 2 +-
>   net/core/rtnetlink.c                 | 2 +-
>   net/devlink/devl_internal.h          | 2 +-
>   net/ethtool/rss.c                    | 2 +-
>   net/netfilter/nf_conntrack_netlink.c | 2 +-
>   net/netlink/genetlink.c              | 4 ++--
>   9 files changed, 17 insertions(+), 12 deletions(-)

[…]

With this:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
