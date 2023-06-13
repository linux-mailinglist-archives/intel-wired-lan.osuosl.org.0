Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C9E72EA6F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 20:03:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3775F60D8E;
	Tue, 13 Jun 2023 18:03:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3775F60D8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686679393;
	bh=wZSoS8QehRKksZ2ANRGdWLP5p7X5IM7GCzjM6SKe+lw=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yX+bARqavZXCah6R0HQxNzfhrKoycoHpgvBumaXK9wXVVyUJiiVvadISfCD+2lDkZ
	 sbyXfVJp55j+JpvL0ySybkratrYYPpwpSRAP3aPe2/01CFblHPFKQ4i+N9vEXR9nWs
	 du6b4ANOZrN2XxYznUmHnjPb+3H2JLc7uo9S2RoKPJV35b75o8Y3P8GTP3zlbg5kyc
	 /GI2csSsGRjv/rpwGnGyxQbSGCCTH3iftuqPgBfFLXXXK95rZiuRPKHRNK8tnPp/cV
	 HkA0W3uqncbkHLHk6ZY3ALwK6vPsyWe3Ih+MJMzOJre5tgubOawZ+UMZKXbKvH/xpY
	 jZuUaxK5CGTmA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nfEy0sAJbS70; Tue, 13 Jun 2023 18:03:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93F9B60675;
	Tue, 13 Jun 2023 18:03:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93F9B60675
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BEABC1BF28D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 17:59:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95D534098C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 17:59:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95D534098C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TTbvX1aS3t9Q for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 17:59:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F0114098A
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2F0114098A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 17:59:42 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1A94462CE4;
 Tue, 13 Jun 2023 17:59:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E07AC433D9;
 Tue, 13 Jun 2023 17:59:40 +0000 (UTC)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 04C9BBBEAC8; Tue, 13 Jun 2023 19:59:38 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>
In-Reply-To: <ZIiJOVMs4qK+PDsp@boxer>
References: <20230613151005.337462-1-maciej.fijalkowski@intel.com>
 <9eee635f-0898-f9d3-f3ba-f6da662c90cc@intel.com> <ZIiJOVMs4qK+PDsp@boxer>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 13 Jun 2023 19:59:37 +0200
Message-ID: <874jnbxmye.fsf@toke.dk>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 13 Jun 2023 18:03:06 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686679180;
 bh=XMbXrY2QSZ7SK1RGlb6OVyN+sYIHDTpVIUzDFjQKJ6I=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=eksRU4jqs7WlA1xyd2EBqkY2CBN53qmt+iiVSaM/pF0xPTjRWOtj7z8HGfMWqEg0f
 ze/aC11mJML9rI+WP0n4ZQVBVHhDtMjXgWjUoygF/opCtVKhsk7R3ZYO8KGf6bl062
 ZVpS2vjc3ya6+ZO7txQ+pdG/H9SQPYxoOo0whnZMG1HDGgHNuapQNDDUldgEwOZhiZ
 xzXhkoGROewZhFVf8hSOVqHEteSiwS1xw3xJ8Rn0jdY+iwxSms8FL2v5VgFzxVQvXB
 RTosgnbt0fhNB1l8kixeSCvxcOk1ofBiEXh76bP3DxegdmlI4zXxsI5iz0PkXqEy/t
 b4ptI9Eh8buaw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=eksRU4jq
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: allow hot-swapping XDP
 programs
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
 anthony.l.nguyen@intel.com, fred@cloudflare.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Maciej Fijalkowski <maciej.fijalkowski@intel.com> writes:

> On Tue, Jun 13, 2023 at 05:15:15PM +0200, Alexander Lobakin wrote:
>> From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>> Date: Tue, 13 Jun 2023 17:10:05 +0200
>> 
>> > Currently ice driver's .ndo_bpf callback brings the interface down and
>> > up independently of the presence of XDP resources. This is only needed
>> > when either these resources have to be configured or removed. It means
>> > that if one is switching XDP programs on-the-fly with running traffic,
>> > packets will be dropped.
>> > 
>> > To avoid this, compare early on ice_xdp_setup_prog() state of incoming
>> > bpf_prog pointer vs the bpf_prog pointer that is already assigned to
>> > VSI. Do the swap in case VSI has bpf_prog and incoming one are non-NULL.
>> > 
>> > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>> 
>> [0] :D
>> 
>> But if be serious, are you sure you won't have any pointer tears /
>> partial reads/writes without such RCU protection as added in the
>> linked commit ?
>
> Since we removed rcu sections from driver sides and given an assumption
> that local_bh_{dis,en}able() pair serves this purpose now i believe this
> is safe. Are you aware of:
>
> https://lore.kernel.org/bpf/20210624160609.292325-1-toke@redhat.com/

As the author of that series, I agree that it's not necessary to add
additional RCU protection. ice_vsi_assign_bpf_prog() already uses xchg()
and WRITE_ONCE() which should protect against tearing, and the xdp_prog
pointer being passed to ice_run_xdp() is a copy residing on the stack,
so it will only be read once per NAPI cycle anyway (which is in line
with how most other drivers do it).

It *would* be nice to add an __rcu annotation to ice_vsi->xdp_prog and
ice_rx_ring->xdp_prog (and move to using rcu_dereference(),
rcu_assign_pointer() etc), but this is more a documentation/static
checker thing than it's a "correctness of the generated code" thing :)

-Toke
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
