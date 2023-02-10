Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD166921A1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Feb 2023 16:08:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA239822E3;
	Fri, 10 Feb 2023 15:08:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA239822E3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676041684;
	bh=OF+CIrBGgPMPUpKaxJegBCnzoO8slcN1QeLfebyDZC8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9A5y8w7zola8BTewAPdxH0YDAGsL0YdIxMk3kw0p502ntM236g58Bmu2eKN+h9Kzk
	 Yz/q08h5ym7WBmOrzOmEGI6XOEOjHfrlvxnlTd9TB78dAK5XxKz5juoAsJIwFAuyrn
	 TKo+F6KSHB1x5SBj3rdwix2m26eRasBDwO2MREYWi+MLszDpSjjypFW3pJTH1nvlaD
	 B/XZjmf5PVM4EEdh5rin6Y5Sh2hZwjx5C4ze1DDONyYeepkN9Trn9I+OasPCsPv35q
	 EnGtd+xax+tKOXeqpEklO5Sx5iZwJGGfQoaDODaNH1sTo9KIhVuvCuax5ubZvBh886
	 oGQjXjAiTLw3w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wylH3fRfG_XG; Fri, 10 Feb 2023 15:08:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86638822D7;
	Fri, 10 Feb 2023 15:08:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86638822D7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 913F21BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 15:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6867140103
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 15:07:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6867140103
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Ni9dbSl0ZNz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Feb 2023 15:07:56 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D250400D1
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1D250400D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 15:07:55 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id a2so5368087wrd.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 07:07:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qlNC/kKbUsPlOCKxymEIios8n2ASOqnWF3/GBA5cjF8=;
 b=PtqW3zSV+gyEltakEM9DmyE1TXe/3jHdF8HdZxCOTaJm3NFs9FCGTIoa9UR+2w8mgd
 122C1bYmNFcxM01yhg5LVM+2AKmcVUuzwxSCR101bNBhS6C0VGn3Nj5UWg+qm+d8Ez/6
 +ug+7pdAmPtR92OZGpR2yDTWZrFJokKZmTwFghNlKELMz5F/k1Ist5T2BkPKZP7s5/B2
 sUmk8ZcNIlmui+Y8pcgk54zRTyfW16fzXi1iEg9B7f0rJzVaPJx4zaarkyvu4D/wYaIA
 YeZED0qsy6cQt4Jhenp/JPhFXyNWG8sbq32WUem5DI7GOCYvy5YECBTz0ixdNn8fyUqu
 YOBw==
X-Gm-Message-State: AO0yUKUIC/LI+SxkjJkP5NCZ9MkHwwuaZRKYUmZWFcxeHDxUc/b6vtFf
 74T0VzkbMw85D/gFnLz9/qhjuJDJBwn9TEB63lOGAA==
X-Google-Smtp-Source: AK7set9TQ9KQwoqhGEVIEcXvcv/U/mBHAlTVV6SnxMr8fK8HsjlFlHF/wol0CSMUXWf24slV/I76/nqHc2iMbAXrygg=
X-Received: by 2002:a5d:6583:0:b0:2c4:936:f423 with SMTP id
 q3-20020a5d6583000000b002c40936f423mr475464wru.113.1676041673935; Fri, 10 Feb
 2023 07:07:53 -0800 (PST)
MIME-Version: 1.0
References: <20230207135440.1482856-1-vladimir.oltean@nxp.com>
 <20230207135440.1482856-11-vladimir.oltean@nxp.com>
In-Reply-To: <20230207135440.1482856-11-vladimir.oltean@nxp.com>
From: Eric Dumazet <edumazet@google.com>
Date: Fri, 10 Feb 2023 16:07:42 +0100
Message-ID: <CANn89iL=Z8TOymdaBJ8WUBh8pXOgp_tKM3KVsQZ05uT3orOj4w@mail.gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=qlNC/kKbUsPlOCKxymEIios8n2ASOqnWF3/GBA5cjF8=;
 b=lUiODl6bVd/fiZW4XlYgkYvOyJLav2vvyyiWeUXwQEPV09CChytAMwjjvRT0y6b2gx
 3tGbsprUTD5PgTf821cAG8WnuE71fRwT7VI07pUdubcRoTjoscHc6fOnt8jUeo6blWaf
 3C3aY8Wxj5ut8lRP6XRG918amBW2lPMn2hZgDTcJ/Fu8u01vC8CoMWe5LsO5qvG4XOku
 p0X1zCcFem9m7EENqaeQQUm9aRx7DMErky8UyerVpVYP5JFH9npBkyA/AYrPGwelLvAh
 2tYbYNRlWECWCWVqp6BvTzPlJYqx6gFOva9Yr6HDm7sdM+Xz5myPKiWX5kRb74BBwCbm
 vMDQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=lUiODl6b
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 10/15] net/sched: make
 stab available before ops->init() call
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Kurt Kanzenbach <kurt@linutronix.de>, Jamal Hadi Salim <jhs@mojatatu.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 7, 2023 at 2:55 PM Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
>
> Some qdiscs like taprio turn out to be actually pretty reliant on a well
> configured stab, to not underestimate the skb transmission time (by
> properly accounting for L1 overhead).
>
> In a future change, taprio will need the stab, if configured by the
> user, to be available at ops->init() time. It will become even more
> important in upcoming work, when the overhead will be used for the
> queueMaxSDU calculation that is passed to an offloading driver.
>
> However, rcu_assign_pointer(sch->stab, stab) is called right after
> ops->init(), making it unavailable, and I don't really see a good reason
> for that.
>
> Move it earlier, which nicely seems to simplify the error handling path
> as well.

Well... if you say so :)

>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
>

If TCA_STAB attribute is malformed, we end up calling ->destroy() on a
not yet initialized qdisc :/

I am going to send the following fix, unless someone disagrees.

(Moving qdisc_put_stab() _after_ ops->destroy(sch) is not strictly
needed for a fix,
but undo should be done in reverse steps for clarity.

diff --git a/net/sched/sch_api.c b/net/sched/sch_api.c
index e9780631b5b58202068e20c42ccf1197eac2194c..aba789c30a2eb50d339b8a888495b794825e1775
100644
--- a/net/sched/sch_api.c
+++ b/net/sched/sch_api.c
@@ -1286,7 +1286,7 @@ static struct Qdisc *qdisc_create(struct net_device *dev,
                stab = qdisc_get_stab(tca[TCA_STAB], extack);
                if (IS_ERR(stab)) {
                        err = PTR_ERR(stab);
-                       goto err_out4;
+                       goto err_out3;
                }
                rcu_assign_pointer(sch->stab, stab);
        }
@@ -1294,14 +1294,14 @@ static struct Qdisc *qdisc_create(struct
net_device *dev,
        if (ops->init) {
                err = ops->init(sch, tca[TCA_OPTIONS], extack);
                if (err != 0)
-                       goto err_out5;
+                       goto err_out4;
        }

        if (tca[TCA_RATE]) {
                err = -EOPNOTSUPP;
                if (sch->flags & TCQ_F_MQROOT) {
                        NL_SET_ERR_MSG(extack, "Cannot attach rate
estimator to a multi-queue root qdisc");
-                       goto err_out5;
+                       goto err_out4;
                }

                err = gen_new_estimator(&sch->bstats,
@@ -1312,7 +1312,7 @@ static struct Qdisc *qdisc_create(struct net_device *dev,
                                        tca[TCA_RATE]);
                if (err) {
                        NL_SET_ERR_MSG(extack, "Failed to generate new
estimator");
-                       goto err_out5;
+                       goto err_out4;
                }
        }

@@ -1321,12 +1321,13 @@ static struct Qdisc *qdisc_create(struct
net_device *dev,

        return sch;

-err_out5:
-       qdisc_put_stab(rtnl_dereference(sch->stab));
 err_out4:
-       /* ops->init() failed, we call ->destroy() like qdisc_create_dflt() */
+       /* Even if ops->init() failed, we call ops->destroy()
+        * like qdisc_create_dflt().
+        */
        if (ops->destroy)
                ops->destroy(sch);
+       qdisc_put_stab(rtnl_dereference(sch->stab));
 err_out3:
        netdev_put(dev, &sch->dev_tracker);
        qdisc_free(sch);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
