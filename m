Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B3479D6A4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 18:43:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26EA280C80;
	Tue, 12 Sep 2023 16:43:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 26EA280C80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694537016;
	bh=+m+tlrmUIn5IJ82ev0Q7WCrz6KsMGWqNpBBUhDF72F8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Axvi8hTmVyTU0v9MA0Bpk4oNBTbGPhJo7bbvTT5Q5nhiAm78TN/e6bzVyBNABhIMY
	 Ic30PKEw66Sszd4dkMLF7qNOhJaHwez5kkZ6MxzoCfphT1FFhSUpI+0IPRGnoUrVjO
	 RF2tZf+vIywXfDiTAxR0L5nFB49YpoWTPOxN/hcC6qLpS2yoqk9XatF0DakUe14mrb
	 R45F0Xm5vuyh0muDoeVCRzG4Hz38A7s1U4xGwQeNAvmfknzK38GlM9vIJqK9XePNlH
	 fQRtv3cq///Mbt8YL9kn3WuZSOV6zVdjoW7YpHggMyd0N4aoc75OIMOy0tIn6dHrPL
	 xh/EVeB98yIkw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ti8EeOyUSCUj; Tue, 12 Sep 2023 16:43:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B5CF80BC3;
	Tue, 12 Sep 2023 16:43:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B5CF80BC3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2FE3F1BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 16:43:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 082D360AB9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 16:43:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 082D360AB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B66mAt_0hWOG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 16:43:28 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8FB6E60A9C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 16:43:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8FB6E60A9C
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-424-XHwPbz-YOJ6A82BlckR1yQ-1; Tue, 12 Sep 2023 12:43:25 -0400
X-MC-Unique: XHwPbz-YOJ6A82BlckR1yQ-1
Received: by mail-lj1-f200.google.com with SMTP id
 38308e7fff4ca-2bf69ccfcfbso11386661fa.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 09:43:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694537004; x=1695141804;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=4bVHKgpISHkqCHiU3dxh57FnbAZ+iAvp3SzRx4v8ZuQ=;
 b=tV8lCWKCBQPpWIfb5M6juQAsTtBOwBPQHUyunWRoH6min5xN2tCmg9XTWI/xptauMr
 yX2hqKS+FRJ/4t+8un/hgS772nbxKH1Lz5GD6D/KQtzpktYgQGO9LPDvEJW5Nzj0GHha
 ej/5gbCh1P7z76yT/iE+mJ4uNfLr4jLiiJMCAZgz3q6Qz//N3UqIHOsUgSjyyac5B3h+
 iux6MwtqlbkjrRqUv4v9jgXUakqr6nmirb1D0jfAlPc1wYKDO+aHeluxqozW1kDMDPgM
 hQ5oRQZiuLGyh5psAYbo5IsUuU3DdmHAO5Bxm/pumTbNUXQ6oIWv/M5WcNqg1Z1FaoFi
 1gJA==
X-Gm-Message-State: AOJu0YwEAkXM3kVvmVuyQ0deLEoHETA4deAezSt7mZOvgSBkao8rHwmL
 kZHQTVXg66hOLgqXNskK1JBvpUuVQC0KYn6ns9BsYaIHt5dm+mbeVc+607l5K/8OnuvlklwEMAb
 6gx5BTIi4cYRMHsqHqWA88siROqk2JA==
X-Received: by 2002:a2e:b0f0:0:b0:2bf:b0d3:20f9 with SMTP id
 h16-20020a2eb0f0000000b002bfb0d320f9mr234015ljl.5.1694537003902; 
 Tue, 12 Sep 2023 09:43:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHN1r3UWsMGn9SrqexOOT/6c/EwRnBl0chm4B1kyRF9Ujhs+42AWdvXR2rhcIEktE5d7HuZ0w==
X-Received: by 2002:a2e:b0f0:0:b0:2bf:b0d3:20f9 with SMTP id
 h16-20020a2eb0f0000000b002bfb0d320f9mr234002ljl.5.1694537003512; 
 Tue, 12 Sep 2023 09:43:23 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-249-231.dyn.eolo.it.
 [146.241.249.231]) by smtp.gmail.com with ESMTPSA id
 jj27-20020a170907985b00b0099e12a49c8fsm7142924ejc.173.2023.09.12.09.43.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Sep 2023 09:43:23 -0700 (PDT)
Message-ID: <a4ebf8016d35fd7a64be65e79025a384ee4b105d.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Tue, 12 Sep 2023 18:43:22 +0200
In-Reply-To: <ad50a349-11be-36bc-fed4-94f5aab3eabd@intel.com>
References: <20230912092952.2814966-1-andrii.staikov@intel.com>
 <0168a988486f4bff08bd186d5aea1cfe4900a2c3.camel@redhat.com>
 <ad50a349-11be-36bc-fed4-94f5aab3eabd@intel.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1694537007;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4bVHKgpISHkqCHiU3dxh57FnbAZ+iAvp3SzRx4v8ZuQ=;
 b=VPTXibZK7q+8SUvfKrfqzIgnCZ8j4VpTl8t/HcNb4HqPXxssjtZwFj8nFgXcYGcL884+74
 Gfk0TWylwMqe6xJ9sq9Vf0ZzeGJVAozH3S9PaUr76UdR/qSa9vcDgvj2w+AB0iSBn5liSu
 V2OLFUdJ66tHiq1JDanYM30NBbtPudM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=VPTXibZK
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Add support for
 packet mirroring using hardware in switchdev mode
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Andrii Staikov <andrii.staikov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2023-09-12 at 16:41 +0200, Alexander Lobakin wrote:
> From: Paolo Abeni <pabeni@redhat.com>
> Date: Tue, 12 Sep 2023 11:56:15 +0200
> 
> > Hi all,
> > 
> > On Tue, 2023-09-12 at 11:29 +0200, Andrii Staikov wrote:
> > > Switchdev mode allows to add mirroring rules to mirror
> > > incoming and outgoing packets to the interface's port
> > > representor. Previously, this was available only using
> > > software functionality. Add possibility to offload this
> > > functionality to the NIC hardware.
> > > 
> > > Introduce ICE_MIRROR_PACKET filter action to the
> > > ice_sw_fwd_act_type enum to identify the desired action
> > > and pass it to the hardware as well as the VSI to mirror.
> > > 
> > > Example of tc mirror command using hardware:
> > > tc filter add dev ens1f0np0 ingress protocol ip prio 1 flower
> > > src_mac b4:96:91:a5:c7:a7 skip_sw action mirred egress mirror dev eth1
> > > 
> > > ens1f0np0 - PF
> > > b4:96:91:a5:c7:a7 - source MAC address
> > > eth1 - PR of a VF to mirror to
> > > 
> > > Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> > 
> > The amount of patches that IMHO should land only into intel-specific
> > MLs and instead reaches also netdev, recently increased.
> 
> Let's clarify what you mean by "intel-specific MLs".
> Do you mean our internal MLs and review or the open one, IWL?
> 
> IWL is mostly rudimentary. It's open, but almost nobody outside of Intel
> sits there, which means 2/3 of patches doesn't get enough attention and
> reviews. It's used by our validation as well, but that's it.
> Our internal ML for Ethernet patches works as usually. I realize roughly
> half of all patches pass it without a Reviewed-by tag and it's something
> we're actively working on. If all goes well, no patches without a proper
> review will go outside Intel's internal Ethernet MLs.
> Now, the second part,
> 
> > 
> > Please try harder to apply proper constraints to your traffic, netdev
> > is already busy enough!
> 
> Do you want us to stop CCing netdev when we send patches to the outer
> review to IWL?
> This would mean they will once again start missing enough attention from
> the outside. I hope you don't want our patches to be reviewed *only* by
> Intel folks, right? I don't feel this a good idea.
> That's why we started CCing netdev this year. And we do that when we
> send patches to IWL, i.e. outside. It's not like "ok, let's Cc netdev
> instead of going through our internal review process".
> 
> Our clients, partners (e.g. Czech RedHat), our developers, want our
> patches to have proper complex review. Dropping netdev would mean that a
> patch of some non-corpo guy will be reviewed more carefully and at the
> end will have better quality than an Intel patch, which "shouldn't
> overburden netdev".
> Saying "we'll see them when Tony sends a PR" also doesn't work well for
> me. A patch gets taken into a PR once it passes internal review, then
> validation, this always do take a while. Imagine waiting for a month for
> your patch to be sent in a PR to get a negative review, so that you have
> to repeat this process again and wait for another month to get some more
> change requests and again :D
> 
> In a couple months, no our patches will hit netdev without a proper
> Reviewed-by obtained during the internal review, let's not take corner
> cases and effectively hide our code from the world?
> I don't think you'd like to put a huge banner on netdev's lore saying
> "please also take a look at intel-wired-lan" :z I also don't want ppl to
> behave like Greg KH some time ago when he said "where's your damn
> internal RB, stop abusing LKML" in reply to my early RFC PoC sent only
> for an open discussion xD

I was under the impression that some patches landed on IWL cc-ing
netdev possibly unintentionally, e.g.:

https://lore.kernel.org/netdev/20230904021455.3944605-1-junfeng.guo@intel.com/

My intention was to raise attention on such events.

Cheers,

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
