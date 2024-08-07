Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EC294AEA3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 19:05:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FFCE8121A;
	Wed,  7 Aug 2024 17:05:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tlvJG2LHoqZq; Wed,  7 Aug 2024 17:05:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 983DC80E30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723050355;
	bh=KVNbsnpB5P7CPlk9mWYmVYf7DRex46w64FAD8tvofQA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f+L5UkhyMepU0vi5JVwCAQrAwsALf/tNQoQfk4tMzvz6+NYdw6JspK6DR/ZU43VMh
	 Owyr4+iorG3pdBcE7sKNf/SllOGBgpO3v2gToszRV1GJeJvjicazP6CovaAr6eI9fK
	 a/QXr0ovM+8WZsNF9/dPgb4QWyt4KeHyTlpNGgyn/VSjuXmGPWutvcWvmys2L2x+H+
	 9PGpPvsU0Bn2ZlpxDVuaFXXQbrQIOnYNKCfJ1xRiotRDpU5gdcvOgULm9C9yRBq3Mt
	 MqF911cLx4nvDjuALMMB9k9LOxSBBf8wMQCQp6B754sv5Biy2qp2XjN43Ltepb507l
	 wHVKWkvewYhOQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 983DC80E30;
	Wed,  7 Aug 2024 17:05:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 022DC1BF30E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 17:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0D6840621
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 17:05:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qLM7TUe8FpKe for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 17:05:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B0AC840611
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0AC840611
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0AC840611
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 17:05:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 2A5BECE0B90;
 Wed,  7 Aug 2024 17:05:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 094D4C4AF0D;
 Wed,  7 Aug 2024 17:05:44 +0000 (UTC)
Date: Wed, 7 Aug 2024 18:05:42 +0100
From: Simon Horman <horms@kernel.org>
To: Manoj Vishwanathan <manojvishy@google.com>
Message-ID: <20240807170542.GE3006561@kernel.org>
References: <20240803182548.2932270-1-manojvishy@google.com>
 <20240805182159.3547482-1-manojvishy@google.com>
 <04affbd5-828a-4327-8b84-8767c1c139f1@intel.com>
 <CA+M8utN7FbwMF5QN8O0a0Qnd3ykQwq7O4QkHMVEaBj2jE9BEYw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+M8utN7FbwMF5QN8O0a0Qnd3ykQwq7O4QkHMVEaBj2jE9BEYw@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1723050347;
 bh=aTViCyKmbUpyeYhUXvYqN+xUH5sZrDigFA7fo5bgqGQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jCwa3mb/XrIlgV09o0SIJuC3Bxlnx0rEHSw1m4Oy2YR0d4feUg2BaRAuaKBYHEJ0b
 tsfJ6Ddn65nw0Myc9Hh0SPb1WuaovIr+Ei2w2gS2iTn4YvqnO2OufUS3QmZq6HLMFs
 qgRABE3wvB6kwfYsGFxxzwzIbY26OBNKKhgKH2qU8L+TcsQj2H7TD82ok/SmKQvTsF
 TimrbSSy3m3R+tGUEyj6jUbykPwYQs/uHHS3Q4QPwKrVQWomIBLr1vGREz6DWNvAMr
 Zl3BRtTEYe69XJnNW8/xCsThl2CiEhTwtUKMs18d6ams4mumPCy8veLi28vQoRclYR
 w3MtwR4EnMWPg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jCwa3mb/
Subject: Re: [Intel-wired-lan] [PATCH] [PATCH iwl-net] idpf: Acquire the
 lock before accessing the xn->salt
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 David Decotigny <decot@google.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 07, 2024 at 06:58:59AM -0700, Manoj Vishwanathan wrote:
> Thanks Przemek & Olek for your quick feedback and responses.
> Hi Olek,
> I can add more details about the issue we faced in the commit message.
> The bug we had here was a virtchnl delay leading to the xn->salt
> mismatch. This could be due to several factors including default CPU
> bounded kworker workqueue for virtchnl message processing being
> starved by aggressive userspace load causing the virtchnl to be
> delayed. While debugging this issue, this locking order  appeared like
> a potential issue, hence the change was made.
> But, this change is more a clean up we felt based on concurrent access
> to the virtchnl transaction struct and does not fix the issue. This is
> more of the patch to do the right thing before we access the "xn".
> I wanted to start with a first patch to the community for acceptance
> followed by a series of other patches that are general clean up or
> improvements to IDPF in general. Will follow with with [PATCH v3]

Still, I am a little confused about the protection offered to xn->salt.

My analysis is as follows, where guarded is used loosely to mean
the lock is held.

* In idpf_vc_xn_pop_free() it is guarded by vcxn_mngr->xn_bm_lock.

* In idpf_vc_xn_exec() it is guarded by:
  1. vcxn_mngr->xn_bm_lock when idpf_vc_xn_pop_free is called
  2. idpf_vc_xn_lock, otherwise

* And with this patch, in idpf_vc_xn_forward_reply it is guarded
  by idpf_vc_xn_lock().

This doesn't seem entirely consistent.

Also, please don't top-post on Kernel mailing lists.

...
