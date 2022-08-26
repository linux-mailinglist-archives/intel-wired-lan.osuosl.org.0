Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA035A26B7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Aug 2022 13:16:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BC58610E6;
	Fri, 26 Aug 2022 11:16:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BC58610E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661512575;
	bh=ibFsIptFyEWcAzi6B9IL3m3QBHpItEz0xqPGYC7OJ7o=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0NamLzqhec8KuVlseP1yirNkNtb8zv4hziSx/6oXJGmZny2yzNxP0CExLkaXs229L
	 G5rrjWj3Y9ejX6EA+UGZ/sa/EiR5OzDZi0ulE64CrqMbP6+geHXR3l1f4wAxYMfObf
	 7xf3S95pEftVlDE4YY8NUsOqlMIupunL35NamrzjaeDwQPgHdgapmNsiW3UvQnHPuQ
	 zDr6GJjpaFFGiNQGp7Eb4ozJCQfzDcZuTJ+ZQwdw8supNx4haqDr/RMK0uHjbUYHEb
	 rnyt+Lm2q76+wMeD1Y3w/cB5FV/T6nsv2JnATXYJ6ihGWxCgDfsJNfnXbyBYPONXEn
	 jWqIAGS/BmZuA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id epaTMi1MEYkv; Fri, 26 Aug 2022 11:16:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 03F5C610DC;
	Fri, 26 Aug 2022 11:16:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 03F5C610DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 195D61BF289
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:16:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E5F7383EF0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:16:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5F7383EF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CLwHpo_UIGKu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Aug 2022 11:16:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CA6183EEE
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5CA6183EEE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 11:16:03 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id ay12so707598wmb.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Aug 2022 04:16:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
 bh=vRtP9Skqdi6VRUhZFmU/5JLtOk/HwkyzGgOrB5aVaqc=;
 b=lmhXmyAVYSBFOdtA4Dte2s5ofxsdE7GAxU/mLTH/XA/4/Eqp0bpLVJ8+SNCqQHanqZ
 H3jDbIlT4EvzGN/vkLZvC1cfseVlT7shlDRaf6Unl9by8FqSNgph8fiErmm8wA/HkSU8
 /LYEvtWtqpGcL9I2aO+2hXP16cBwvFulm6l+BlYcB/I/bo8mBQ3YvCkmitTDvobA4VH6
 2uH1aGBsJk10JWFf5Db6NQo67xH6Ue0YWJtJqbaOzYzsUElhqLDYuq6diSfhpMQlMHvt
 o/woQmGZMriRHm+CncP8GVxmC4AOlBmFj4/P0C9P7GnDywRo4iAQQTrTvA8folWKt630
 XtoA==
X-Gm-Message-State: ACgBeo3v1zbKwEJFXRoSEXA3t3jrmOzUwdOkmz9it0e9gEamrqjIQtWf
 p5cB8dXujqeUq7mbKbdqF9ts9Q==
X-Google-Smtp-Source: AA6agR4QzaWX8XmLz8SGvNyIEQsQ5GQDx172pO0aIEdni0lwQywVURMMxO00o4DMyckU7PnYyS53nA==
X-Received: by 2002:a05:600c:3048:b0:3a6:5ce0:9701 with SMTP id
 n8-20020a05600c304800b003a65ce09701mr4969801wmh.97.1661512562030; 
 Fri, 26 Aug 2022 04:16:02 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 h21-20020a05600c351500b003a60ff7c082sm8622454wmq.15.2022.08.26.04.16.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Aug 2022 04:16:01 -0700 (PDT)
Date: Fri, 26 Aug 2022 13:16:00 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <YwircDhHhOfqdHy/@nanopsycho>
References: <20220826110059.119927-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220826110059.119927-1-wojciech.drewek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc;
 bh=vRtP9Skqdi6VRUhZFmU/5JLtOk/HwkyzGgOrB5aVaqc=;
 b=BdK6TUPc3E95StF714NnERXWUrvaQ18TZ48qTAB6uRMvSSkzEVJKaqXmU1jlABADIn
 k3elOllRLH6zHYKRmAwge10AsGt90U/L65VKqWXeZW3722f3YNZY2M6o0H2gbn4FthOq
 9/wDAAKJfQrIXOJtNPCu+fMEUpHxgxUQLnAZWXBJD/Wpxp3u6jP3BhpdkUG+5cYGLv0M
 SietHnFquLDYnlZz24gs/eUGbfFd/mRvtsAkCQhTSptZgFuuwrQA39UkYjGUYIBD7J/U
 b7brUwjthuTOFYs7QOveQ5WljT0czxdNfL+pV+SxzidtQgnEBBW+r0I2jMyvmZkYAjF2
 6Q3A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=BdK6TUPc
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next 0/5] ice: L2TPv3 offload
 support
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
Cc: simon.horman@corigine.com, maksym.glubokiy@plvision.eu,
 komachi.yoshiki@gmail.com, jchapman@katalix.com, edumazet@google.com,
 boris.sukholitko@broadcom.com, louis.peens@corigine.com, gnault@redhat.com,
 intel-wired-lan@lists.osuosl.org, vladbu@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, pablo@netfilter.org, baowen.zheng@corigine.com,
 kurt@linutronix.de, paulb@nvidia.com, jhs@mojatatu.com,
 xiyou.wangcong@gmail.com, netdev@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Aug 26, 2022 at 01:00:54PM CEST, wojciech.drewek@intel.com wrote:
>Add support for dissecting L2TPv3 session id in flow dissector. Add support
>for this field in tc-flower and support offloading L2TPv3. Finally, add
>support for hardware offload of L2TPv3 packets based on session id in
>switchdev mode in ice driver.
>
>Example filter:
>  # tc filter add dev $PF1 ingress prio 1 protocol ip \
>      flower \
>        ip_proto l2tp \
>        l2tpv3_sid 1234 \
>        skip_sw \
>      action mirred egress redirect dev $VF1_PR
>
>Changes in iproute2 are required to use the new fields.
>
>ICE COMMS DDP package is required to create a filter in ice.

I don't understand what do you mean by this. Could you please explain
what this mysterious "ICE COMMS DDP package" is? Do I understand it
correctly that without it, the solution would not work?

>
>Marcin Szycik (1):
>  ice: Add L2TPv3 hardware offload support
>
>Wojciech Drewek (4):
>  uapi: move IPPROTO_L2TP to in.h
>  flow_dissector: Add L2TPv3 dissectors
>  net/sched: flower: Add L2TPv3 filter
>  flow_offload: Introduce flow_match_l2tpv3
>
> .../ethernet/intel/ice/ice_protocol_type.h    |  8 +++
> drivers/net/ethernet/intel/ice/ice_switch.c   | 70 ++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_tc_lib.c   | 27 ++++++-
> drivers/net/ethernet/intel/ice/ice_tc_lib.h   |  6 ++
> include/net/flow_dissector.h                  |  9 +++
> include/net/flow_offload.h                    |  6 ++
> include/uapi/linux/in.h                       |  2 +
> include/uapi/linux/l2tp.h                     |  2 -
> include/uapi/linux/pkt_cls.h                  |  2 +
> net/core/flow_dissector.c                     | 28 ++++++++
> net/core/flow_offload.c                       |  7 ++
> net/sched/cls_flower.c                        | 16 +++++
> 12 files changed, 179 insertions(+), 4 deletions(-)
>
>-- 
>2.31.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
