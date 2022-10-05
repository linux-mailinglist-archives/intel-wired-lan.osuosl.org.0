Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9282C5F58B8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Oct 2022 19:00:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 874CE4012E;
	Wed,  5 Oct 2022 17:00:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 874CE4012E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664989231;
	bh=Pd8I32jfx9wWTF8HyBNQvhgnhP1uUJYY/RRl0dm0rTY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Hch67HSw6Ovtq7sE/V0eYN/YBBDQ2p4HwTlMmxXbcOfxA6lXJ+M5/gcf+0LEC4k2P
	 llEc82HrxxvLzlQxbFgca+KqnJIJXKs1k9Uv4ImiAi/xiD5gKFZcB7HwZ33oDkbhFH
	 +k32D30YawSWeNiUs1DhiuOnbOL40B+hmfiMLWLNLkL8BtPsNg27yfkXwdeoiJJb2+
	 C1LPGpqNvux5GFZ6neTBtDieeSfa14A6TK9I2Kec0j1xjdQooPXi0JEzbtFt+vQdFg
	 LIE2EhlACNT8BWIxkEC/A+vHjDmlKH5q9seo7rGAZaX/KG+Mit+HalG9osFJOmBVM8
	 SR45FhCKXm34g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LDORu9wvkpu4; Wed,  5 Oct 2022 17:00:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C9C440545;
	Wed,  5 Oct 2022 17:00:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C9C440545
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 974801BF973
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 17:00:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70B9360FB5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 17:00:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70B9360FB5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L5u0imHjQ0Oh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Oct 2022 17:00:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECBCC607D0
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ECBCC607D0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Oct 2022 17:00:23 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id r18so2640991pgr.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Oct 2022 10:00:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date;
 bh=au1kA5hld7SkJ8lIxI50iUwiPh/h0u31U6B95ziOiHM=;
 b=6mLi+m87ejDWht/ePlMW2VAoJhNZ1necQikhTHKf0X1gJewlCu2QA5Eerfm+/jXihX
 gJKv/cZHarAMgjEpF8yVewVxU46MJUoPgxt5Zu/5sIuzNmoCWfpp/gyr9aJQA27Gbpiz
 LUQdGyD85ne67d0jFGQzoAuyjW6d6KwOf7rhzaEcFfapzPrBKUMrzxX2oz7zU02BJoEX
 jv8UpZ80Uxb4zmsb+Kh7UeSi7TttGday8wLjb9gO0jD/W0P3SXKwL/98H0KPn+q7caUt
 alaCZvFryy9Nt1DfuMTjHefElUtxMfx/30QYwDc/oSkXe9714Ia+FlzOF4mMZo8GljxM
 RqZw==
X-Gm-Message-State: ACrzQf0+TBRL0V91DvHq+8YMm2v8HW7JioOT94I0KBD4SiTCJeUNOm40
 s/UWJDE2gLZNSHvxzisO89w0Sw==
X-Google-Smtp-Source: AMsMyM7QZ4kJNKIrcCc/FeutU8sGvLk5sS0wAN4IZ+8P56VwMvakguRxakpUmtHyQDLRPPjCib6HvQ==
X-Received: by 2002:a05:6a00:1d83:b0:561:d2f8:b86d with SMTP id
 z3-20020a056a001d8300b00561d2f8b86dmr726089pfw.57.1664989223228; 
 Wed, 05 Oct 2022 10:00:23 -0700 (PDT)
Received: from fastly.com (c-73-223-190-181.hsd1.ca.comcast.net.
 [73.223.190.181]) by smtp.gmail.com with ESMTPSA id
 h13-20020aa796cd000000b0053eec4bb1b1sm6844904pfq.64.2022.10.05.10.00.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Oct 2022 10:00:22 -0700 (PDT)
Date: Wed, 5 Oct 2022 10:00:20 -0700
From: Joe Damato <jdamato@fastly.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20221005170019.GA6629@fastly.com>
References: <1664958703-4224-1-git-send-email-jdamato@fastly.com>
 <1664958703-4224-2-git-send-email-jdamato@fastly.com>
 <Yz1chBm4F8vJPkl2@boxer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yz1chBm4F8vJPkl2@boxer>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=user-agent:in-reply-to:content-disposition:mime-version:references
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
 bh=au1kA5hld7SkJ8lIxI50iUwiPh/h0u31U6B95ziOiHM=;
 b=TelhG5NwX3P85y8PrEz49ytEkVweIRamZfOlW07n6b5o9hJWnOwigq+27N5MjEI9Ak
 UmrYdpite5ZXBN8VMyj1WW5GLBXj+hQIezarNh67PZoFWykIhmCPzgZs0LF/PCJYuFIQ
 cdYDQuYIbpVZxRF+v1Jc5YVx3rhTmKY+vLaJE=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=TelhG5Nw
Subject: Re: [Intel-wired-lan] [next-queue 1/3] i40e: Store the irq number
 in i40e_q_vector
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 05, 2022 at 12:29:24PM +0200, Maciej Fijalkowski wrote:
> On Wed, Oct 05, 2022 at 01:31:41AM -0700, Joe Damato wrote:
> > Make it easy to figure out the IRQ number for a particular i40e_q_vector by
> > storing the assigned IRQ in the structure itself.
> > 
> > Signed-off-by: Joe Damato <jdamato@fastly.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e.h      | 1 +
> >  drivers/net/ethernet/intel/i40e/i40e_main.c | 1 +
> >  2 files changed, 2 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> > index 9926c4e..8e1f395 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e.h
> > +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> > @@ -992,6 +992,7 @@ struct i40e_q_vector {
> >  	struct rcu_head rcu;	/* to avoid race with update stats on free */
> >  	char name[I40E_INT_NAME_STR_LEN];
> >  	bool arm_wb_state;
> > +	int irq_num;		/* IRQ assigned to this q_vector */
> 
> This struct looks like a mess in terms of members order. Can you check
> with pahole how your patch affects the layout of it? Maybe while at it you
> could pack it in a better way?

OK, sure. I used pahole and asked it to reorganize the struct members,
which saves 24 bytes.

I'll update this commit to include the following reorganization in the v2 of
this set:

$ pahole -R -C i40e_q_vector i40e.ko

struct i40e_q_vector {
	struct i40e_vsi *          vsi;                  /*     0     8 */
	u16                        v_idx;                /*     8     2 */
	u16                        reg_idx;              /*    10     2 */
	u8                         num_ringpairs;        /*    12     1 */
	u8                         itr_countdown;        /*    13     1 */
	bool                       arm_wb_state;         /*    14     1 */

	/* XXX 1 byte hole, try to pack */

	struct napi_struct         napi;                 /*    16   400 */
	/* --- cacheline 6 boundary (384 bytes) was 32 bytes ago --- */
	struct i40e_ring_container rx;                   /*   416    32 */
	/* --- cacheline 7 boundary (448 bytes) --- */
	struct i40e_ring_container tx;                   /*   448    32 */
	cpumask_t                  affinity_mask;        /*   480    24 */
	struct irq_affinity_notify affinity_notify;      /*   504    56 */
	/* --- cacheline 8 boundary (512 bytes) was 48 bytes ago --- */
	struct callback_head       rcu;                  /*   560    16 */
	/* --- cacheline 9 boundary (576 bytes) --- */
	char                       name[32];             /*   576    32 */

	/* XXX 4 bytes hole, try to pack */

	int                        irq_num;              /*   612     4 */

	/* size: 616, cachelines: 10, members: 14 */
	/* sum members: 611, holes: 2, sum holes: 5 */
	/* last cacheline: 40 bytes */
};   /* saved 24 bytes! */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
