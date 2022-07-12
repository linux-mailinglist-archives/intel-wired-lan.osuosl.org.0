Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 764055721C7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Jul 2022 19:31:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44E6383E83;
	Tue, 12 Jul 2022 17:31:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44E6383E83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657647087;
	bh=j/tBsvBr3Ytn/0IMR5rG/NJuRmyJY4JeiHQsNrjrrtI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OhWSEO/DPIrK5snmeloXP/gu0D9hSy+WnMxHh2Gsls8jD26mjRTKY7pKnPY7AnkfO
	 5lT87QSiqUkZ5hxL0E+OEtjdvdKa960x1C5D9pO8g9Cs2CN8BrMwQ+0bGS5ZHqDEpr
	 FhPRUoj+GWXYseQS+rUvlgeLudg33Upl1A4nAXwHBX0TdUm20KsJyJ7qAgCZ9gpU6d
	 UaUMGPIgIvOPexGbZQ1wXq5DyWxlKd8VopO0AWDMoPUyQb3hUb+OhjWFu9oVqQq0iy
	 98TuAG6G7aUWSSSItorSTOsHHSdRGBopCFaJ9ASSAE+LpHytwS3MG+ynLaYjKUgbvo
	 z5dvN8FaX8b4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AKWwW8-BdYkm; Tue, 12 Jul 2022 17:31:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB03283E0D;
	Tue, 12 Jul 2022 17:31:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB03283E0D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF6D81BF575
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 17:31:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B5A3D40B07
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 17:31:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5A3D40B07
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4GeYSSFfbe30 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Jul 2022 17:31:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A349B4074E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A349B4074E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 17:31:17 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-170-WSpd2zjHM42NCZ19WTNdZg-1; Tue, 12 Jul 2022 13:31:15 -0400
X-MC-Unique: WSpd2zjHM42NCZ19WTNdZg-1
Received: by mail-wm1-f69.google.com with SMTP id
 p21-20020a05600c1d9500b003a2d6c2b643so911922wms.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Jul 2022 10:31:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Xlt7tEF5MS5pxQiB3QIg/pvI4EFIsZBxEXSN0MrG/jw=;
 b=ofALzHLtwYmm5R0xGWGxJrXqdAW9unYTBh1q8iGFC6uvakDqZK6wbOJrdvN8takerA
 itVG8mNfw2dhqIGOliYKh8uUdDGRIqpHZoqOdwyJ7YEQJD6HGiKopx/d1eXzUTnvD7Ix
 dPqwQUMby7dalIAySgny5khGw1hDA0dmnEIG+OLIf8pcRwzGqu4OEnuAIW3H8zOli2s2
 c1APuL2JazLX9rL4V39Cj2srZITUhjBlkKfWRYcaf5rCxVNcf0A2C5neRGbYs79B09z7
 mHOlOywxT1TWJhQ4hGL79A/faJhvd+Iwkb6/m295Ltyn3NWGf+5sMSqHSrEOrrh2cizQ
 Ludg==
X-Gm-Message-State: AJIora/Lebwzcc70v60izjgxqBEocKRWvoa0tiMV2kIyaBbXUKKso0s3
 xaD79F9SoQoVnGAZwRoHYB0DvN8Drc5IRutDx9T1C194XAfwqlV3wnfrx3IvRw8nl01m9AL+3sV
 pL6dBnFu4lrn2UvOMT2D3ksKf5V15Fg==
X-Received: by 2002:a05:600c:5013:b0:3a2:e7a0:a4e4 with SMTP id
 n19-20020a05600c501300b003a2e7a0a4e4mr5324550wmr.122.1657647073828; 
 Tue, 12 Jul 2022 10:31:13 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1s0r989U5Ouvj2bJIHS625Y9N7GUvbCsG3uzPYYcJStSYMmdiEh5m+vwinxrjEjYEN0fCfyTQ==
X-Received: by 2002:a05:600c:5013:b0:3a2:e7a0:a4e4 with SMTP id
 n19-20020a05600c501300b003a2e7a0a4e4mr5324494wmr.122.1657647073515; 
 Tue, 12 Jul 2022 10:31:13 -0700 (PDT)
Received: from localhost.localdomain ([185.233.130.50])
 by smtp.gmail.com with ESMTPSA id
 g17-20020a05600c4ed100b003a2ed2a40e4sm3182733wmq.17.2022.07.12.10.31.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Jul 2022 10:31:13 -0700 (PDT)
Date: Tue, 12 Jul 2022 19:31:10 +0200
From: Guillaume Nault <gnault@redhat.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Message-ID: <20220712173110.GB3794@localhost.localdomain>
References: <20220708122421.19309-1-marcin.szycik@linux.intel.com>
 <20220708122421.19309-3-marcin.szycik@linux.intel.com>
 <20220708192253.GC3166@debian.home>
 <MW4PR11MB57763D75A50EF9CF369C0EDAFD879@MW4PR11MB5776.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <MW4PR11MB57763D75A50EF9CF369C0EDAFD879@MW4PR11MB5776.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1657647076;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Xlt7tEF5MS5pxQiB3QIg/pvI4EFIsZBxEXSN0MrG/jw=;
 b=GXpqTJvfk+lkOFi4aJlrJThimMq3JEwXGBhl0FeToOW5LawOMftWT4oQjx846zcdPEt/lH
 YlUNIAyXi0NJDzW/4jgv+zoCZrwQHQdV6Kfigq9HJdhncZkveixj1AOHMr8MAOw079f5rB
 DQVN7Gy/NuGYN7uRoMQMd25eVmi8yLU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GXpqTJvf
X-Mailman-Original-Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=gnault@redhat.com
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v4 2/4] net/sched:
 flower: Add PPPoE filter
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "paulb@nvidia.com" <paulb@nvidia.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "boris.sukholitko@broadcom.com" <boris.sukholitko@broadcom.com>,
 "paulus@samba.org" <paulus@samba.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "zhangkaiheb@126.com" <zhangkaiheb@126.com>,
 "pablo@netfilter.org" <pablo@netfilter.org>,
 "baowen.zheng@corigine.com" <baowen.zheng@corigine.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "komachi.yoshiki@gmail.com" <komachi.yoshiki@gmail.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "mostrows@earthlink.net" <mostrows@earthlink.net>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jul 11, 2022 at 10:26:21AM +0000, Drewek, Wojciech wrote:
> > > +static void fl_set_key_pppoe(struct nlattr **tb,
> > > +			     struct flow_dissector_key_pppoe *key_val,
> > > +			     struct flow_dissector_key_pppoe *key_mask,
> > > +			     struct fl_flow_key *key,
> > > +			     struct fl_flow_key *mask)
> > > +{
> > > +	/* key_val::type must be set to ETH_P_PPP_SES
> > > +	 * because ETH_P_PPP_SES was stored in basic.n_proto
> > > +	 * which might get overwritten by ppp_proto
> > > +	 * or might be set to 0, the role of key_val::type
> > > +	 * is simmilar to vlan_key::tpid
> > 
> > Didn't you mean "vlan_tpid"?
> 
> Yes, is vlan_key::tpid not clear/valid?

At least it wasn't entirely clear to me as I wondered if I got the
comment right. And it's basically free to use the real name of the
structure field.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
