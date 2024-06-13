Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E1390742E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2024 15:47:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14C6660F06;
	Thu, 13 Jun 2024 13:47:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MikN_6DPZeqe; Thu, 13 Jun 2024 13:47:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5531E6100A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718286431;
	bh=wOoeDgfjaTYL6X2m3YC5RS7T1vZqj7WNqB1g61FjSjY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TVUd1F/ascACCEwZ76C+vwH2tduvWcHNMY2NqOVC7EpKBU+t1rHBQWBFb1SJW3Jca
	 AWjPHGAHjesCayjSwNfLQnAOUkthnOjikYrW/mKyMmXXM+6rQtM9jelkImFJNxLGy2
	 AWJm0vbKt65jZf6XZp1dYqcuu2Bzzq15uQ76fi82Fgf21UXH4+3P5EdBtWbzT2awfW
	 XfzSUIZIicv99W7bk1bymMYZ+BdTGWUuepmD3b/QNvZFOLB8C7Gx9mV1SAd5rK9+sl
	 Iwe4avifG2sonGEQ9UWzs6b10Uz84qw2z7WnrdgXQfy8EktF6VyvSU0da7zZYVvTbH
	 hlFBMelsM2vIQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5531E6100A;
	Thu, 13 Jun 2024 13:47:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6BD131BF34C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 13:47:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 570F04094D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 13:47:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kaOXr-gjvffb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2024 13:47:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 720E640628
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 720E640628
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 720E640628
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2024 13:47:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A92F761B24;
 Thu, 13 Jun 2024 13:47:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5097C2BBFC;
 Thu, 13 Jun 2024 13:47:06 +0000 (UTC)
Date: Thu, 13 Jun 2024 06:47:06 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240613064706.15f26159@kernel.org>
In-Reply-To: <43c1ec2f-977e-45cd-b974-e943fa880535@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-2-aleksander.lobakin@intel.com>
 <20240529183409.29a914c2@kernel.org>
 <43c1ec2f-977e-45cd-b974-e943fa880535@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718286427;
 bh=F+vpsUe1Dqx+OiW7G9Jnm5iiQTon9YAexjro/SFNuDA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rQR+S+xmR2KSIF4UEpapK+WRaIgnwkATsPQq69mgFBtV4TtX9n/55mbgZZjBO4G9f
 aZ0gb3FNYi5H1si+U7MAMH3X/VTLgHF6JZb1x398NY9TfhZQnayChxunUqG2GlYKb/
 sJBBl1xCGHXVZKChT8Lvj62a4w47r1RmdGnFTfHvJ0c+uvjp2WAO2WPprxyHZVSM8H
 Lj2OdTay6E6IE9k/CoiEaueLkWqWWvxfRbqEhbK0JBTogAzYgF0T5k5y9kVZAni+sn
 mDgIu4qWLmuyOs+brmU2A0aLGPr+9PF1z4pjRUAmpRluO6xWX/O5ElGDrUH9RT++mp
 8yxsYE6frB9Qw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=rQR+S+xm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 01/12] libeth: add cacheline
 / struct alignment helpers
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
Cc: Mina Almasry <almasrymina@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 13 Jun 2024 12:47:33 +0200 Alexander Lobakin wrote:
> > Having per-driver grouping defines is a no-go.  
> 
> Without it, kdoc warns when I want to describe group fields =\
> 
> > Do you need the defines in the first place?  
> 
> They allow to describe CLs w/o repeating boilerplates like
> 
> 	cacheline_group_begin(blah) __aligned(blah)
> 	fields
> 	cacheline_group_end(blah)

And you assert that your boilerplate is somehow nicer than this?
See my reply to Przemek, I don't think so, and neither do other
maintainers, judging by how the socket grouping was done.
You can add new markers to include the align automatically too, etc.

> > Are you sure the assert you're adding are not going to explode
> > on some weird arch? Honestly, patch 5 feels like a little too  
> 
> I was adjusting and testing it a lot and CI finally started building
> every arch with no issues some time ago, so yes, I'm sure.
> 64-byte CL on 64-bit arch behaves the same everywhere, so the assertions
> for it can be more strict. On other arches, the behaviour is the same as
> how Eric asserts netdev cachelines in the core code.
> 
> > much for a driver..  
> 
> We had multiple situations when our team were optimizing the structure
> layout and then someone added a new field and messed up the layout
> again. So I ended up with strict assertions.

I understand. Not 100% sure I agree but depends on the team, so okay.

> Why is it too much if we have the same stuff for the netdev core?

But we didn't add tcp_* macros and sock_* macros etc.
Improve the stuff in cache.h is you think its worth it.
And no struct_groups() please.
