Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FA47BBFCD
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 21:45:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2EBAD6FAB8;
	Fri,  6 Oct 2023 19:45:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EBAD6FAB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696621512;
	bh=qQrfuCR8RXHAf7O/NS2UGQcCfFVizG4mr1gd+AcitB0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=48dVvmeIhkcJ6S+fKLvKwe7ulSZ39HeyrJ94lJT7jYPlctzNVYahAG1MAYOLDW2zn
	 XWtf2HLBqjQk4fut3+HDTt/EMUum0NVxQw/dkLrCRY8pON/n8vt+RY6h3ecwARrdUY
	 OphRsk/CyJP7m562+Hu53lZKZypVEnpcDX1V7AJWnxArPMZBnY3RzjMll8gJDAL40l
	 +RMgzflqGsjT42NoPbrxhU0F80sqllOuBuB5Ve1zqFVJYJ0lG0R01U2OTpDW9thw4z
	 ksfKm0FLaJKu37+GdZuf2IJs8xQUhtDVJc24/ezz9j2/pLWrOw+OknYTaBUYqhHXpl
	 b4GQ0boc/y62A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hfligjTP5y7l; Fri,  6 Oct 2023 19:45:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0C0D60F37;
	Fri,  6 Oct 2023 19:45:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B0C0D60F37
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A081D1BF40D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 19:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8596540194
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 19:45:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8596540194
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MFkEBsdQbhps for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 19:45:03 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 43DFB40467
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 19:45:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43DFB40467
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 49A0FCE28FB;
 Fri,  6 Oct 2023 19:44:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 276A5C433C8;
 Fri,  6 Oct 2023 19:44:58 +0000 (UTC)
Date: Fri, 6 Oct 2023 12:44:57 -0700
From: Kuba Kicinski <kuba@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20231006124457.26417f37@kernel.org>
In-Reply-To: <ZSA7cEEc5nKl07/z@nanopsycho>
References: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
 <20231006114101.1608796-3-arkadiusz.kubalewski@intel.com>
 <ZR/9yCVakCrDbBww@nanopsycho> <20231006075536.3b21582e@kernel.org>
 <ZSA7cEEc5nKl07/z@nanopsycho>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696621498;
 bh=39zT5U5C6ML4UJu86kiMMCT+A/btFJCDbmSNpW+/ufA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=EaDT7pOKoSDEC6eeiApq95BQB7uUBMrmtS9NN52siiSD5klu95fOIt5hHdqvzB8xN
 ACA7ABu4I75Z6XvWeuF3BWGPHl7fC+BP8/KmB/QbHW/Cq+y12Nfr9MoYFa7tCvISRF
 Vn6pcu/CAg6SO6ugkKdCEUhQHciLolzna9HI5K5C/CDNQPWv85iFDXK9sin4rSAbMe
 inCa1/UwHBNCAvvZV+WDnj7St1yTNqY/7vBLETN7p3axqv3QXJ42rU/OF2DwI0NPuN
 3jAH8YxZ07ux9L8IXYWMR5rxVritya4oEgIhQeRkbRTTtGDeP2l/HeWfgyRT/gug4E
 +AUAHiJm4LReg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=EaDT7pOK
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/5] dpll: spec: add
 support for pin-dpll signal phase offset/adjust
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
Cc: vadim.fedorenko@linux.dev, corbet@lwn.net, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 6 Oct 2023 18:53:04 +0200 Jiri Pirko wrote:
> Fri, Oct 06, 2023 at 04:55:36PM CEST, kuba@kernel.org wrote:
> >> I'm confused. Didn't you say you'll remove this? If not, my question
> >> from v1 still stands.  
> >
> >Perhaps we should dis-allow setting version in non-genetlink-legacy
> >specs? I thought it may be a useful thing to someone, at some point,
> >but so far the scoreboard is: legit uses: 0, confused uses: 1 :S
> >
> >Thoughts?  
> 
> I don't know what the meaning of version is. I just never saw that being
> touched. Is there any semantics documented for it?
> 
> Kuba, any opinion?

/me switches the first name in From :P

I think it basically predates the op / policy introspection,
and allows people to break backward compat.

drop_monitor bumped to 2 in 2009:

  683703a26e46 ("drop_monitor: Update netlink protocol to include
netlink attribute header in alert message")

which breaks backward compat.

genetlink ctrl went to 2 in 2006:

  334c29a64507 ("[GENETLINK]: Move command capabilities to flags.")

which moves some info around in attrs, also breaks backward compat
if someone depended on the old placement.

ovs did it in 2013:

  44da5ae5fbea ("openvswitch: Drop user features if old user space
attempted to create datapath")

again, breaks backwards compat.


I guess it may still make one day to bump the version for some proto
which has very tight control over the user space. But it hasn't
happened for 10 years.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
