Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F7496CC02
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Sep 2024 03:03:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E06240B9B;
	Thu,  5 Sep 2024 01:03:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wUR8RI92T1nn; Thu,  5 Sep 2024 01:03:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24E3140B9E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725498216;
	bh=He/j/R9ukZGte7HLKjuUofXyAApQ5u7KYcQrnvHmyK8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=94niHo9Byg/Z8QmyWNC2fW0AP7tNgBtAPO6p/n3yAAPE+FhIOo24D2M9+7F32Rz2n
	 JZdC+8i1TMqHzpKBkR/vIo18T/sxVN+LKNPUXLQcSIZE2Ma9RWn8ABquJQDyXLZ5/P
	 wzQdcyAcQ1Wn0TFf6FBUU89pocDQYI3uhsmjV2EXaIA1+lKO7N9qb72Zgf2l7nJLMt
	 YchV87x6v804nyJ0frfrLWLNz6JEuB8qAGaCBoL4g3if/HauD3iAtBgL5MjUuTzPgw
	 SM+7+YzOmcYNjAYFxCS1UW0B9mFVx/w4g85rJY5Erzs83/jWwc9anyhtrCfuKQo6yl
	 swh4gcipYL4BQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 24E3140B9E;
	Thu,  5 Sep 2024 01:03:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 444551BF263
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:03:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 31380605FF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:03:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HWH6uFifJiXA for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Sep 2024 01:03:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6D533600B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D533600B8
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6D533600B8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Sep 2024 01:03:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 0F2B9A41FD8;
 Thu,  5 Sep 2024 01:03:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C2D2C4CEC9;
 Thu,  5 Sep 2024 01:03:31 +0000 (UTC)
Date: Wed, 4 Sep 2024 18:03:30 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20240904180330.522b07c5@kernel.org>
In-Reply-To: <a0585e78f2da45b79e2220c98e4e478a5640798b.1725457317.git.pabeni@redhat.com>
References: <cover.1725457317.git.pabeni@redhat.com>
 <a0585e78f2da45b79e2220c98e4e478a5640798b.1725457317.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725498211;
 bh=mBo1M+6e6dT1/Ok93GvGsN3bfzsU8Icz47GwhvHuvU8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HyjXFFLcxwLxMxQSpWyDJZuCU3rWXCn6VSOZhWX8fuGmKzor/qw7slbuia/oROApn
 iOEe2JZ1VM7LJEyKTSyhEVe27jb0nPW/Yyw3vgfmQ8v9qld8Q2W13m2eyEqDdXI8ci
 32jM68GNUoM74G2DpA0Tnut20KpocyxedHX8alyNwdbuoNIK8UXdvHeIAKHt55IVQp
 qOuAQoGF2WiC5iIGoSVtPVflDgdKCpP1mKgsyPPxeaVewaeZQ7CzggmcoGvzFZKF5B
 EQ6Z/6F0bvMCtFb2ylmkKwoO/gv2LfSvcPvpVKyzEKbtiNXOtF9do/WQwpoYNKJVJm
 oBnUQYXduV89Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=HyjXFFLc
Subject: Re: [Intel-wired-lan] [PATCH v6 net-next 02/15] netlink: spec: add
 shaper YAML spec
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
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Donald Hunter <donald.hunter@gmail.com>, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed,  4 Sep 2024 15:53:34 +0200 Paolo Abeni wrote:
> +doc: |
> +  Networking HW rate limiting configuration.
> +
> +  This API allows configuring HW shapers available on the network
> +  devices at different levels (queues, network device) and allows
> +  arbitrary manipulation of the scheduling tree of the involved
> +  shapers.
> +
> +  Each @shaper is identified within the given device, by an @handle,
> +  comprising both a @scope and an @id.
> +
> +  Depending on the @scope value, the shapers are attached to specific
> +  HW objects (queues, devices) or, for @node scope, represent a
> +  scheduling group, that can be placed in an arbitrary location of
> +  the scheduling tree.
> +
> +  Shapers can be created with two different operations: the @set
> +  operation, to create and update a single "attached" shaper, and
> +  the @group operation, to create and update a scheduling
> +  group. Only the @group operation can create @node scope shapers
> +
> +  Existing shapers can be deleted /reset via the @delete operation.

nit: space before the / ?

> +        name: bw-min
> +        type: uint
> +        doc: Minimum Guaranteed bandwidth for the given shaper.

I think I asked to remove "Minimum"? Both "guaranteed" and "minimum"
express the fact that we can't go lower, so it's a bit of a pleonasm.

> +      -
> +        name: node
> +        type: nest
> +        nested-attributes: node-info
> +        doc: |
> +           Describes the node shaper for a @group operation.
> +           Differently from @leaves and @shaper allow specifying
> +           the shaper parent handle, too.

Parent handle is inside node scope? Why are leaves outside and parent
inside? Both should be at the same scope, preferably main scope.

> +      -
> +        name: shaper
> +        type: nest
> +        nested-attributes: info
> +        doc: |
> +           Describes a single shaper for a @set operation.

Why does this level of nesting exist? With the exception of ifindex 
all attributes for SET are nested inside this..
