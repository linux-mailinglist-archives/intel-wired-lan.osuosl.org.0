Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7444388D54A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 05:04:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2C9BE81BCF;
	Wed, 27 Mar 2024 04:04:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hMm8Nnv01Bb5; Wed, 27 Mar 2024 04:04:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 852E3812D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711512257;
	bh=E9vii7CtyKOfpqrH4aBuUtqY9GOp2dEbCkKRsauLKqo=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Qt8O7Vjt9gIWFaOBBaMamEnCpbivlC4BmoFKy+U58F2bTyeu/d8OZNI6SwGImWGql
	 k1TxoTfnOGrZ7Vd3xQ5QUHxvpoBbmC2el231nI2LDFhp9UUi1JMhNr6nMYaq1wpYKa
	 DnOFdpNI7QqVbk1Byaz2qo1urXpBoVOqF70nlEad0gfVAt/BYOMVi4IWQStqqbidzm
	 vjSAO/dxfCVZtDPHV4atF40j73vjaAypPkA2a/Y3FGErSqKVkmp0CIp4/mAh5xTVzn
	 46hGaRvjPDlYYMsKi6EMDnaJoQEx7e9+cbdQ/nkeL9vdKps3iQTIB/lDlqSAoE8TrQ
	 J6v7m8zIuplbg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 852E3812D5;
	Wed, 27 Mar 2024 04:04:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E100C1BF980
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 04:04:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D9E5B81303
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 04:04:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tjziabmxiSMj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 04:04:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E2E8E81282
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2E8E81282
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2E8E81282
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 04:04:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1625F6141C;
 Wed, 27 Mar 2024 04:04:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 344F3C433F1;
 Wed, 27 Mar 2024 04:04:13 +0000 (UTC)
Date: Tue, 26 Mar 2024 21:04:12 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240326210412.1bfce311@kernel.org>
In-Reply-To: <20240326164116.645718-3-aleksander.lobakin@intel.com>
References: <20240326164116.645718-1-aleksander.lobakin@intel.com>
 <20240326164116.645718-3-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711512253;
 bh=lZ9YORRD2cjb6H23mT2QiMkZ3f+zO7pgeUMUfeQKOD0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=e5LYzJS6xKvz7rl3C2Ix6ObippjF4zUUh12ri0KJTjZlxyG+0T4Jxy5dU2zugFIZR
 B8LaDyn8b/stXUN/SVxdZomS2g0x8UPpjUaT/lBcixqNZ0tTAiAPLdSDsAF+IhWG25
 IJApIYpyORp9gzqRyyfvKrfQ2JH+WGHvksj/nGwvYPy5RVw+xBNp1RvFSoPG4aRMtK
 Cr712R0HlFeL6sMJCv6xngCYxBNu3+FCucZhS3jMjjN78y4JG1odDpU8X+phHOA9jw
 Ai0pija9g3vZoK9FQgiRJkejxfnRmTLLY7hxgkFKg9+wD64pEtTlJa85Rano8faeP6
 Y340++hKyHJXg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=e5LYzJS6
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] idpf: make virtchnl2.h
 self-contained
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
Cc: Kees Cook <keescook@chromium.org>, netdev@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, linux-hardening@vger.kernel.org,
 Simon Horman <horms@kernel.org>, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 26 Mar 2024 17:41:15 +0100 Alexander Lobakin wrote:
> To ease maintaining of virtchnl2.h, which already is messy enough,
> make it self-contained by adding missing if_ether.h include due to
> %ETH_ALEN usage.
> At the same time, virtchnl2_lan_desc.h is not used anywhere in the
> file, so remove this include to speed up C preprocessing.

Breaks allmodconfig, it seems..
-- 
pw-bot: cr
