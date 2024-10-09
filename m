Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1095B995C2C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Oct 2024 02:14:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 96C018119A;
	Wed,  9 Oct 2024 00:14:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h5dn2aA65QXv; Wed,  9 Oct 2024 00:14:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC92B811A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728432852;
	bh=Twh0CAL7l58wLDNeygKwtnTU/6uRMqH2dV0D4xJVuCw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=V+XRRgHiuE1IeeC1mREbvQ+ntBgh2BFAnhFPpZq9V4PTDeEFXutJPubr7DRcuFnfc
	 ma9oJG4C2S4Mr6SkpV8Dub/7p1lz+BytsIqXZQ6ydmTlvSaWIolpFSHhLwmpuEofGr
	 eQVfO4PraGGrGNEELcj1k2PBUay++H57sfdomTOnVIMEyPKIjCTAo6H/a+8LFSpP5T
	 QTqKbVmjk0XBwjjBMKRjmQ+PbXn6sjL9CnBtgv+EDIl0msTR6k6xcjN9qcgKK/xVwJ
	 W2E6IJFzMFGA4Hv38LyBd1PbfQpeBv89BvVo5ga81HQM70+RreYgyu+y/EkinqzQYC
	 JsRlbtKRXMvLQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DC92B811A2;
	Wed,  9 Oct 2024 00:14:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D27281BF47F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 00:14:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BB1AF405EF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 00:14:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D7JUiz8DqkSK for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Oct 2024 00:14:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D305A405ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D305A405ED
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D305A405ED
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Oct 2024 00:14:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 866EBA43876;
 Wed,  9 Oct 2024 00:13:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30D8DC4CED4;
 Wed,  9 Oct 2024 00:14:06 +0000 (UTC)
Date: Tue, 8 Oct 2024 17:14:05 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20241008171405.42e8890e@kernel.org>
In-Reply-To: <72241d8f846c67b7201f0293956ef6db6bbbf176.1727704215.git.pabeni@redhat.com>
References: <cover.1727704215.git.pabeni@redhat.com>
 <72241d8f846c67b7201f0293956ef6db6bbbf176.1727704215.git.pabeni@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1728432846;
 bh=vCkuvxHqKBdleT2a8rkQv03dvvsEFnflHm/7wJjAlKg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gb+RpNKX9gwa3wLmraNzkHZmQCjeLhk/iz4c4dssyTKlfdgr297c6M29zH/NkEz/G
 LC4gM0wM3clnCwWHl95ESLVIulyDN2X7IXRo6iLUc+I4ix9Ginh+S9a1rdrbMJ3vEf
 1ogDcACRkf4vjM3+VErNTO5M6AOOTqWrHbMSqz48rPftK6CkbDTCE7uR3BNKTqpPe6
 LAdVf2t14ADIVaSm/rsC0KogBG0SSqIfuUIpgk3V4UiZQMYU41ueM6HIXPZoWbeNSS
 hA8YRzO+KoUHgW0aIu8EVZ/p/FJAXeH+Ptow6Spw0owhIO77KpolFkQilnZNPu0QB9
 ufgfHYy5E+wrw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gb+RpNKX
Subject: Re: [Intel-wired-lan] [PATCH v8 net-next 02/15] netlink: spec: add
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
 przemyslaw.kitszel@intel.com, Sunil Kovvuri Goutham <sgoutham@marvell.com>,
 Stanislav Fomichev <stfomichev@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 30 Sep 2024 15:53:49 +0200 Paolo Abeni wrote:
> +      name: group
> +      doc: |
> +        Create or update a scheduling group, attaching the specified
> +        @leaves shapers under the specified node identified by @handle,
> +        creating the latter, if needed.

This line is unnecessary? The first line already says "create or update"
so no need to say again that the node will be created?

> +        The @leaves shapers scope must be @queue and the node shaper
> +        scope must be either @node or @netdev.
> +        When the node shaper has @node scope, if the @handle @id is not
> +        specified, a new shaper of such scope is created, otherwise the
> +        specified node must already exist.

> +        The @parent handle for the node shaper is optional in most cases.
> +        For newly created node scope shaper, the node parent is set by
> +        default to the parent linked to the @leaves before the @group
> +        operation. If, prior to the grouping operation, the @leaves
> +        have different parents, the node shaper @parent must be explicitly
> +        set.

How about:

	The @parent handle for a new node shaper defaults to the parent
	of all the leaves, provided all the leaves share the same parent.
	Otherwise @parent handle must be specified.

> +        The user can optionally provide shaping attributes for the node
> +        shaper.
> +        The operation is atomic, on failure no change is applied to
> +        the device shaping configuration, otherwise the @node shaper
> +        full identifier, comprising @binding and @handle, is provided
> +        as the reply.

We should also mention that if the node already exists the group
operation will _add_ leaves to it, rather than recreating it with
the provided set of leaves. Right? My intuition was that the node
will get the specified set of leaves and the other leaves get deleted.
The current behavior is fine, but needs to be documented.
