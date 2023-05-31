Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E798D71896E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 20:33:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 982CF4088E;
	Wed, 31 May 2023 18:33:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 982CF4088E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685558016;
	bh=jFGaroo3C7dFzb3xLaCQ0f20L5eZQAjxbp6SXP7jKsY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Dts5WOYYLKXhTiDQ+O3NQz7jFxWsEVQdm01pPx7c6Owh7Rlp6xZlCQYn0AgYidY4P
	 MivziT/LX/8QbvHaZ1EdU4woUJPzYFR5tGuRAo0Q70Fym9tTIsrhfpTUQnBqOTRcNL
	 QuYmDkoBTwrV6WXpTNxAzWTCaaaKxMCSb86gkUa9F6MhjRWf139x5uZL3dIe1jRfSJ
	 guaX0L8YHXcLnaaKqBuz1Oy5Va2SaMk40ZU2guvdO3exBcuGcaD5aXveKqkiG9De+G
	 UVjmGyKEntDLrjNLoNfaLUkBe9TxZkAN5VtpYgCbJVM0zCDjeKUf6C5UOPq5vvxy3s
	 NhRB7YL2+JUmA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P4pIYpCXrGcv; Wed, 31 May 2023 18:33:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 422D040622;
	Wed, 31 May 2023 18:33:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 422D040622
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E3D4A1BF48B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 18:33:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B9C4840622
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 18:33:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B9C4840622
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7zNKY9h_nk4e for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 18:33:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A8C6405CE
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6A8C6405CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 18:33:28 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id
 4fb4d7f45d1cf-5149c51fd5bso122574a12.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 11:33:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685558006; x=1688150006;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=buUAsYpGe1TJXNZB34CE38fSA+mccfTTNpY51fAljHE=;
 b=AwMncoyxTSFH6z0V84cSiEDjCt+iK9J2cFQZ6oVR9R2f0kiMQnRlbkGJnpWn99T18z
 3Q2XLdJk9QdaYz8/VKMoQy/CkeOVEQyEfLIkNbUcoAqv7iFkfzdFfFt+JLSlM8D1yWuS
 +G4q/oc8x+0bDCXbMcQs3btdpJfOmM9CaEdkIvAM4DVnw9w8zq6wnmzWClnk1QDN93ni
 +a+wYyE+p5SRTmMzetjSLuqKym1Ym84ivsFalBhKpombA3HipfbgXjcQHsdoj6IVm1SD
 DHcYK+ZoZ30tWtvyNd4HJ+mVuhX6heDb0vIbsVDqPud9TRS0bv+4pkQS3a9tBMPMabhR
 1Qhg==
X-Gm-Message-State: AC+VfDzcorsJ+MnH7DQM42DZ6MwL35dn4V3+nf/+fryJRHNA/0XfDTGx
 OaWTIv2W441lwOMa0Nmg518=
X-Google-Smtp-Source: ACHHUZ6pDDMwtYftfM6OWJhG0jtXy7xWoRm/gCiNWZ5cbXC25pURukXPdx30WqV8DCeUUWqd8RiZ+w==
X-Received: by 2002:a17:907:ea4:b0:94f:2852:1d2b with SMTP id
 ho36-20020a1709070ea400b0094f28521d2bmr6787313ejc.72.1685558006031; 
 Wed, 31 May 2023 11:33:26 -0700 (PDT)
Received: from skbuf ([188.27.184.189]) by smtp.gmail.com with ESMTPSA id
 d5-20020a170906640500b0094ef923a6ccsm9366064ejm.219.2023.05.31.11.33.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 May 2023 11:33:25 -0700 (PDT)
Date: Wed, 31 May 2023 21:33:23 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@vger.kernel.org
Message-ID: <20230531183323.eozihhbax4tzho6w@skbuf>
X-Mailer: git-send-email 2.34.1
References: <20230531182758.5u5hv5leobeinxih@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230531182758.5u5hv5leobeinxih@skbuf>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1685558006; x=1688150006;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=buUAsYpGe1TJXNZB34CE38fSA+mccfTTNpY51fAljHE=;
 b=agzLnmVvQLyfbvlFIo2Qgm+/9TnQK2BVa/t/pucjNWa/QTUlTb4HFPlSk7pAwVrAiI
 e7p+ksqNewnEUQ2VRF7Nl75pQNFcQME7lZ/Jq1yn9Xhvjpaj8t8LVKJLB9lkj+FfUhhk
 v89zwEga0fmMo+yK98qLPvfpEswqoOcF5Jj3Jwn2YY1vPL+8rFeikuffhWFp5A4+RxVx
 8+O5dzTg38qjz8pKfPazurh+aUat70x6akJFvMlKo71LaZK7LHuX5UWAgs485KbGw7RL
 LvXMcnD+ednbQ6DPnSFP5MqTpGy/7czqOC8Uwezqzc+kenCdy5x3DzKnOa51pjXpVeUa
 UMjg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20221208 header.b=agzLnmVv
Subject: [Intel-wired-lan] [PATCH net-next 0/5] Improve the taprio qdisc's
 relationship with its children
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Cong Wang <xiyou.wangcong@gmail.com>, Peilin Ye <yepeilin.cs@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Has anyone received this message? I guess at least vger and kuba@kernel.org
rejected it, because I got this bounce email:

kernel.org suspects your message is spam and rejected it.

Error:
550 5.7.350 Remote server returned message detected as spam -> 554 5.7.1
Service unavailable; Helo command [EUR04-DB3-obe.outbound.protection.outlook.com]
blocked using dbl.spamhaus.org; Error: open resolver;
https://www.spamhaus.org/returnc/pub/34.216.226.155

Message rejected by: smtp.kernel.org

Interestingly, if I click the link above, it says "This is not due to an
issue with your email set-up", so I'm not sure what to believe...

----- Forwarded message from Vladimir Oltean <vladimir.oltean@nxp.com> -----

Date: Wed, 31 May 2023 20:39:23 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang
 <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>, Vinicius Costa
 Gomes <vinicius.gomes@intel.com>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Muhammad Husaini Zulkifli
 <muhammad.husaini.zulkifli@intel.com>, Peilin Ye <yepeilin.cs@gmail.com>,
 Pedro Tammela <pctammela@mojatatu.com>
Subject: [PATCH net-next 0/5] Improve the taprio qdisc's relationship with
 its children
X-Mailer: git-send-email 2.34.1

Prompted by Vinicius' request to consolidate some child Qdisc
dereferences in taprio:
https://lore.kernel.org/netdev/87edmxv7x2.fsf@intel.com/

I remembered that I had left some unfinished work in this Qdisc, namely
commit af7b29b1deaa ("Revert "net/sched: taprio: make qdisc_leaf() see
the per-netdev-queue pfifo child qdiscs"").

This patch set represents another stab at, essentially, what's in the
title. Not only does taprio not properly detect when it's grafted as a
non-root qdisc, but it also returns incorrect per-class stats.
Eventually, Vinicius' request is addressed too, although in a different
form than the one he requested (which was purely cosmetic).

Review from people more experienced with Qdiscs than me would be
appreciated. I tried my best to explain what I consider to be problems.
I am deliberately targeting net-next because the changes are too
invasive for net - they were reverted from stable once already.

Vladimir Oltean (5):
  net/sched: taprio: don't access q->qdiscs[] in unoffloaded mode during
    attach()
  net/sched: taprio: keep child Qdisc refcount elevated at 2 in offload
    mode
  net/sched: taprio: try again to report q->qdiscs[] to qdisc_leaf()
  net/sched: taprio: delete misleading comment about preallocating child
    qdiscs
  net/sched: taprio: dump class stats for the actual q->qdiscs[]

 net/sched/sch_taprio.c | 60 ++++++++++++++++++++++++------------------
 1 file changed, 35 insertions(+), 25 deletions(-)

-- 
2.34.1


----- End forwarded message -----
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
