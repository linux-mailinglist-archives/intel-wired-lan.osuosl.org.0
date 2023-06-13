Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCF672E8A0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 18:38:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E514409C8;
	Tue, 13 Jun 2023 16:38:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E514409C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686674293;
	bh=tfvHaKG/wFWstBS2TA4OhXgjtZmnRT9HYEvFCG8pCY8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lPESdaL/J1sNbAc7sxFCT8qCKfXrY62hVjzQzOyxnc6qMOALmEfx1wrPzh6+N4mpT
	 k8IzjHVFcmh7/Y7MrUY8O8+Mp73T6t46kJONqqRuIMOm+UHnByZQtKYrkX15rPWtZw
	 aZst2p903Un/n0ieobk+XOrIztNqb6L4TG5lqF5v1XqzLUHOQfXgoFfMQ5VJNDggKZ
	 4/tOMW2PsbkqenS9qGiLkPLabxJS2ENemoIyoIYskBs75sIM83clo50/LkETUFtQOn
	 cVGKGs66XI+d7Y9xhPOVYY+/mzcoXUQ+0e/yihiL8U7/oppDuc+K0qO9dTp0BcUuXw
	 kDkNLqUcJTwyQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YtiLrlxplVPj; Tue, 13 Jun 2023 16:38:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1524840396;
	Tue, 13 Jun 2023 16:38:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1524840396
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2043E1BF95E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 16:38:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 03540409A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 16:38:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03540409A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EttypbIK9WAS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 16:38:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEDFB409A2
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CEDFB409A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 16:38:05 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id AA3186385D;
 Tue, 13 Jun 2023 16:38:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04ABDC433D9;
 Tue, 13 Jun 2023 16:38:01 +0000 (UTC)
Date: Tue, 13 Jun 2023 09:38:01 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20230613093801.735cd341@kernel.org>
In-Reply-To: <ZIg8/0UJB9Lbyx2D@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-2-arkadiusz.kubalewski@intel.com>
 <20230612154329.7bd2d52f@kernel.org> <ZIg8/0UJB9Lbyx2D@nanopsycho>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686674284;
 bh=bma3arsPpRb//8pgoNM3rtYZA2qY8vvDp0ehgi/2gxk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=m02aDZlxwJWg1TkGHhSEydUAGQyDn4VxaaFu+EAhFrOxQMpNTldfJGa9j8xIBoG3+
 dxsatRKFdTMSBGr5VzPwoFEcxZ3BSi6jf5hud+okZsVHlU4ppKQrtlHqhW01LP4Fsm
 EPXKjnT/ftGpTf2OYAolq6OVhZY/CIgv7+xZ1W3PofzoctoQR+xbCs7QTaodX8F2Zr
 We9aC2q6rKEWOG3svpB2gaZmG3164+4RsciO/5PyySG+bDzw/oJJsB/wZrCEb+5K8n
 hKOX0x1y0Gy9452eBu2wfBOD3Eu3zkyv9YESl18ZnxR2IgRY/PH6xC2TOsfSb6tm1D
 X9ZdgJgd/PDyw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=m02aDZlx
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 01/10] dpll: documentation on
 DPLL subsystem interface
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, linux-clk@vger.kernel.org,
 lucien.xin@gmail.com, leon@kernel.org, corbet@lwn.net,
 linux-rdma@vger.kernel.org, masahiroy@kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, vadfed@meta.com, intel-wired-lan@lists.osuosl.org,
 airlied@redhat.com, vadfed@fb.com, pabeni@redhat.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 13 Jun 2023 11:55:11 +0200 Jiri Pirko wrote:
> >> +``'pin': [{
> >> + {'clock-id': 282574471561216,
> >> +  'module-name': 'ice',
> >> +  'pin-dpll-caps': 4,
> >> +  'pin-id': 13,
> >> +  'pin-parent': [{'pin-id': 2, 'pin-state': 'connected'},
> >> +                 {'pin-id': 3, 'pin-state': 'disconnected'},
> >> +                 {'id': 0, 'pin-direction': 'input'},
> >> +                 {'id': 1, 'pin-direction': 'input'}],
> >> +  'pin-type': 'synce-eth-port'}
> >> +}]``  
> >
> >It seems like pin-parent is overloaded, can we split it into two
> >different nests?  
> 
> Yeah, we had it as two and converged to this one. The thing is, the rest
> of the attrs are the same for both parent pin and parent device. I link
> it this way a bit better. No strong feeling.

Do you mean the same attribute enum / "space" / "set"?
In the example above the attributes present don't seem to overlap.
For user space its an extra if to sift thru the objects under
pin-parent.

> >Also sounds like setting pin attrs and pin-parent attrs should be
> >different commands.  
> 
> Could be, but what't the benefit? Also, you are not configuring
> pin-parent. You are configuring pin:pin-parent tuple. Basically the pin
> configuration as a child. So this is mainly config of the pin itsest
> Therefore does not really make sense to me to split to two comments.

Clarity of the API. If muxing everything thru few calls was the goal
we should also have very few members in struct dpll_pin_ops, and we
don't.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
