Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9AE7192FE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 08:06:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55379424CB;
	Thu,  1 Jun 2023 06:06:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55379424CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685599612;
	bh=NGfTy/MX4yNjxC/kSUSlOgvSqW/y9tLXDi5dornI/rg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TKQwQCJOWXJs/pycPW3vknjrmEL4DPLxl05ZtQpXwTBtCUatt6ihiBV0BxJHRGChi
	 N8efZfDu3D1ZplzSRMQXvg7H6GWZz+R4F65jft2ePrplnclXBOy3AS6IN1/iKrBkGe
	 AvevEC1eOukODvDptM8zFQMDrKLYKa/jNrsFU5IYAxp35f8vPwgxPr1ol7edK3+plR
	 ZMZ+mYyB6F+6kVbpl9FjsUADr0Gu9h/D1nMSvxhRo5fvw4H8LMvTfP2csDwa9OQBur
	 ZUq+3of+j5QDSuDWsvc8aJ6CeGkHQxcw1YBJ25MJK/X8Nx3E7+4wFZxk3+90k8+KED
	 X+9PQUQTQFT+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YN4mv5v-p7zS; Thu,  1 Jun 2023 06:06:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDB2042117;
	Thu,  1 Jun 2023 06:06:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDB2042117
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 657E11BF82F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 06:06:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C1A242117
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 06:06:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3C1A242117
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id In8DeCfg9UkO for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 06:06:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CAC1042108
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CAC1042108
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 06:06:42 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5aef03.dynamic.kabel-deutschland.de
 [95.90.239.3])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 1686E61E4052B;
 Thu,  1 Jun 2023 08:06:17 +0200 (CEST)
Message-ID: <7cd22df9-6c26-8d8d-b132-9c36756a32e6@molgen.mpg.de>
Date: Thu, 1 Jun 2023 08:06:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Vladimir Oltean <olteanv@gmail.com>
References: <20230531182758.5u5hv5leobeinxih@skbuf>
 <20230531183323.eozihhbax4tzho6w@skbuf>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230531183323.eozihhbax4tzho6w@skbuf>
Subject: [Intel-wired-lan] Failed delivery to smtp.kernel.org: blocked using
 dbl.spamhaus.org; Error: open resolver;
 (was: [PATCH net-next 0/5] Improve the taprio qdisc's relationship with its
 children)
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
Cc: Jiri Pirko <jiri@resnulli.us>, "David S. Miller" <davem@davemloft.net>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jamal Hadi Salim <jhs@mojatatu.com>, Jakub Kicinski <kuba@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Pedro Tammela <pctammela@mojatatu.com>,
 Cong Wang <xiyou.wangcong@gmail.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, Peilin Ye <yepeilin.cs@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[Cc: postmaster@kernel.org]


Dear Vladimir,


I have not seen this message. Maybe the postmasters know more.


Kind regards,

Paul


Am 31.05.23 um 20:33 schrieb Vladimir Oltean:
> Has anyone received this message? I guess at least vger and kuba@kernel.org
> rejected it, because I got this bounce email:
> 
> kernel.org suspects your message is spam and rejected it.
> 
> Error:
> 550 5.7.350 Remote server returned message detected as spam -> 554 5.7.1
> Service unavailable; Helo command [EUR04-DB3-obe.outbound.protection.outlook.com]
> blocked using dbl.spamhaus.org; Error: open resolver;
> https://www.spamhaus.org/returnc/pub/34.216.226.155
> 
> Message rejected by: smtp.kernel.org
> 
> Interestingly, if I click the link above, it says "This is not due to an
> issue with your email set-up", so I'm not sure what to believe...
> 
> ----- Forwarded message from Vladimir Oltean <vladimir.oltean@nxp.com> -----
> 
> Date: Wed, 31 May 2023 20:39:23 +0300
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> To: netdev@vger.kernel.org
> Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
>   <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
>   <pabeni@redhat.com>, Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang
>   <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>, Vinicius Costa
>   Gomes <vinicius.gomes@intel.com>, linux-kernel@vger.kernel.org,
>   intel-wired-lan@lists.osuosl.org, Muhammad Husaini Zulkifli
>   <muhammad.husaini.zulkifli@intel.com>, Peilin Ye <yepeilin.cs@gmail.com>,
>   Pedro Tammela <pctammela@mojatatu.com>
> Subject: [PATCH net-next 0/5] Improve the taprio qdisc's relationship with
>   its children
> X-Mailer: git-send-email 2.34.1
> 
> Prompted by Vinicius' request to consolidate some child Qdisc
> dereferences in taprio:
> https://lore.kernel.org/netdev/87edmxv7x2.fsf@intel.com/
> 
> I remembered that I had left some unfinished work in this Qdisc, namely
> commit af7b29b1deaa ("Revert "net/sched: taprio: make qdisc_leaf() see
> the per-netdev-queue pfifo child qdiscs"").
> 
> This patch set represents another stab at, essentially, what's in the
> title. Not only does taprio not properly detect when it's grafted as a
> non-root qdisc, but it also returns incorrect per-class stats.
> Eventually, Vinicius' request is addressed too, although in a different
> form than the one he requested (which was purely cosmetic).
> 
> Review from people more experienced with Qdiscs than me would be
> appreciated. I tried my best to explain what I consider to be problems.
> I am deliberately targeting net-next because the changes are too
> invasive for net - they were reverted from stable once already.
> 
> Vladimir Oltean (5):
>    net/sched: taprio: don't access q->qdiscs[] in unoffloaded mode during
>      attach()
>    net/sched: taprio: keep child Qdisc refcount elevated at 2 in offload
>      mode
>    net/sched: taprio: try again to report q->qdiscs[] to qdisc_leaf()
>    net/sched: taprio: delete misleading comment about preallocating child
>      qdiscs
>    net/sched: taprio: dump class stats for the actual q->qdiscs[]
> 
>   net/sched/sch_taprio.c | 60 ++++++++++++++++++++++++------------------
>   1 file changed, 35 insertions(+), 25 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
