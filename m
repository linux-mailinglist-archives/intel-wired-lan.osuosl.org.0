Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC13397368
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Jun 2021 14:38:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C76C83CED;
	Tue,  1 Jun 2021 12:38:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dFsCdsYZykeK; Tue,  1 Jun 2021 12:38:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D0D983CAC;
	Tue,  1 Jun 2021 12:38:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 64F8A1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 12:38:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 51C1240497
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 12:38:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NyL_85b0HshD for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Jun 2021 12:38:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4028D402CA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Jun 2021 12:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1622551089;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=BCmvmDvbA5Cyjt1llzDXopdRXRvPCz7n+zowurOsi2I=;
 b=UsCFNvmTEhZ+QNALNHRenTpaQZiML7YNn21PwmaQF41c/BiUacqUgHO9K/4U0vjtdk1qFS
 27GCTtdTC7SYTQF2l1sbG3vDjcMtnHIvPvWMFTRZjd1DuUBx+1JsIDmh+UrbuaMifCUXph
 FIgaMKarzPocqlK+M++r/MFWXFgoZv8=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-387-JQBBwow-MPmb3jV9HvWgUQ-1; Tue, 01 Jun 2021 08:38:07 -0400
X-MC-Unique: JQBBwow-MPmb3jV9HvWgUQ-1
Received: by mail-ed1-f71.google.com with SMTP id
 da10-20020a056402176ab029038f0fea1f51so7731955edb.13
 for <intel-wired-lan@lists.osuosl.org>; Tue, 01 Jun 2021 05:38:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=BCmvmDvbA5Cyjt1llzDXopdRXRvPCz7n+zowurOsi2I=;
 b=pkZ2ElheUflUdNXsTapflNsKQ2JUoAigWbx7R5VRpAIKm35GdOIEvpo8Ig6UKb+jGy
 Qe82sb0OaIj4fuEplvfurRWI4WRLUv1ojFZW4fLgt7I/3RGGPi8WYCmKdt4Ewba3uOg6
 Vdv+uef2/IHSKXTrHygwUryh9tpz2YqaEhQ2E3x/On2sa2wJu9f5c1yksyPmjBeOGzjz
 44nJKTA657cPNkCpEh1gU69TAI6DTmM6Kqal+9NwyOq5SnaV9OKfC5o24fPmjPezYUlH
 /bVfmDpeX+Xg/NYYFmN+UjKgLhT6tzPwkJYJCH2PvUHAqxS5S6ZrxF8D8DrYITy2Zn4P
 R5bw==
X-Gm-Message-State: AOAM532+1MyQEtI5TkRC5NTB3H8YgwVswpl2jfSRjh1CQ7IB3lT+V0yO
 xYbKvhffh1Bu1gPqLxVq5hciQ0Dsj4n0R2pGkS9RrWkeQa3/AbrEB6eLK84TwJUyoRqc9M5jmGO
 eSh+QsnA6kXIUZ1wXknUWTjn52+K56A==
X-Received: by 2002:aa7:c042:: with SMTP id k2mr22837695edo.21.1622551086352; 
 Tue, 01 Jun 2021 05:38:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwpB7ZQLhNrH3+kWIY4bBsxg5zjVbHaf8cT7e/xnmNqf1H54zyNXW9g9eVDMYuc9d3PO/JS6g==
X-Received: by 2002:aa7:c042:: with SMTP id k2mr22837659edo.21.1622551086016; 
 Tue, 01 Jun 2021 05:38:06 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id y25sm5008801edt.17.2021.06.01.05.38.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Jun 2021 05:38:05 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id EA801180726; Tue,  1 Jun 2021 14:38:03 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <20210601113236.42651-3-maciej.fijalkowski@intel.com>
References: <20210601113236.42651-1-maciej.fijalkowski@intel.com>
 <20210601113236.42651-3-maciej.fijalkowski@intel.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 01 Jun 2021 14:38:03 +0200
Message-ID: <87czt5dal0.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH intel-next 2/2] ice: introduce XDP Tx
 fallback path
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
Cc: netdev@vger.kernel.org, bjorn@kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Maciej Fijalkowski <maciej.fijalkowski@intel.com> writes:

> Under rare circumstances there might be a situation where a requirement
> of having a XDP Tx queue per core could not be fulfilled and some of the
> Tx resources would have to be shared between cores. This yields a need
> for placing accesses to xdp_rings array onto critical section protected
> by spinlock.
>
> Design of handling such scenario is to at first find out how many queues
> are there that XDP could use. Any number that is not less than the half
> of a count of cores of platform is allowed. XDP queue count < cpu count
> is signalled via new VSI state ICE_VSI_XDP_FALLBACK which carries the
> information further down to Rx rings where new ICE_TX_XDP_LOCKED is set
> based on the mentioned VSI state. This ring flag indicates that locking
> variants for getting/putting xdp_ring need to be used in fast path.
>
> For XDP_REDIRECT the impact on standard case (one XDP ring per CPU) can
> be reduced a bit by providing a separate ndo_xdp_xmit and swap it at
> configuration time. However, due to the fact that net_device_ops struct
> is a const, it is not possible to replace a single ndo, so for the
> locking variant of ndo_xdp_xmit, whole net_device_ops needs to be
> replayed.
>
> It has an impact on performance (1-2 %) of a non-fallback path as
> branches are introduced.

I generally feel this is the right approach, although the performance
impact is a bit unfortunately, obviously. Maybe it could be avoided by
the use of static_branch? I.e., keep a global refcount of how many
netdevs are using the locked path and only activate the check in the
fast path while that refcount is >0?

-Toke

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
