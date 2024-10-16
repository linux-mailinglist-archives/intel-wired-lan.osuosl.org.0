Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F60599FD57
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Oct 2024 02:46:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2AF4380F31;
	Wed, 16 Oct 2024 00:46:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4GjYnnF-qVau; Wed, 16 Oct 2024 00:46:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 237C280F29
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729039574;
	bh=zEjGwpg/IScQOaN7zCd5hwxzn8o9GQCIHOfkiXr5xnQ=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZTH+98MaH3XPJDUnSBxLfRMp5GwKzuhpg7YNrdMcfLzUGOgTI57l9qnnFef5R2KpG
	 Co8O2TnaLdt56TluzzlcJz5GpV0/70kr8xoQjD5q6Lp9vHvGK0icFbMRgHz2jmjDAA
	 32B8Iveq3DjeSH5kGM0ieaC2n5TqAky8YP0IbU9A9jgy2HgfhX1VMNoC6QtHfJSHuH
	 AOvH1WTq9VZDFzwjMY69LhCZJmOogS3mYQeeq6YQIZBUYyzBU4CqwfMHl2+f8m7PLK
	 Uaty5alblxje2XEhlTQFqPJHSGyW+NvBjNffoMih2L703LN3FA6/oaEcFt4hYcEvEa
	 /3WqBuA9n7I9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 237C280F29;
	Wed, 16 Oct 2024 00:46:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2919527F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 00:46:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 096ED608A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 00:46:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c2eHwOYsLRir for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Oct 2024 00:46:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AB7EE608A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB7EE608A3
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB7EE608A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Oct 2024 00:46:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BBC7A5C06FF;
 Wed, 16 Oct 2024 00:46:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7562EC4CEC6;
 Wed, 16 Oct 2024 00:46:08 +0000 (UTC)
Date: Tue, 15 Oct 2024 17:46:07 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Johnny Park <pjohnny0508@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20241015174607.6c29bb8d@kernel.org>
In-Reply-To: <Zw2mTeDYEkWnh36A@Fantasy-Ubuntu>
References: <Zw2mTeDYEkWnh36A@Fantasy-Ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729039568;
 bh=gau4ljJEWPH7doucGrEEQmvS6b7hCt12v+vpbNEM5s4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uDh8HeFiuQthP6mtjKIwK1u1Ou9nr3VRU5GtpG/DbGeWKm3HCp/dehGuz1x4O5bYT
 +ocCNjnZ5NA4u6ynjg2rPbz1JGvUyh7Hv+Wckgk6jejhWH1SnD8AgHyi/qnuw5QsS1
 VxNTGl6zsWXsD2k+XL9+8dI9bV0Tewgdi7RLYee+xbBadEhUUylfE6xDWXPj8/LdP0
 v4dAsnQDqkhfF8DSSW89Gr1Hc5pChlHbLte04U71A+cckcT5EEGZZIXvayC2cdy4Qy
 dTLXmKFopLB+cviFtVtCSnAwM+BCTbspbvgERaNW9YoBo3uIs8FkftFITv4OOwjupt
 5blGzSBXipRDg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=uDh8HeFi
Subject: Re: [Intel-wired-lan] [PATCH] igb: Fix styling in enable/disable
 SR-IOV
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 14 Oct 2024 17:16:29 -0600 Johnny Park wrote:
> This patch fixes the checks and warnings for igb_enable_sriov and
> igb_disable_sriov function reported by checkpatch.pl

Quoting documentation:

  Clean-up patches
  ~~~~~~~~~~~~~~~~
  
  Netdev discourages patches which perform simple clean-ups, which are not in
  the context of other work. For example:
  
  * Addressing ``checkpatch.pl`` warnings
  * Addressing :ref:`Local variable ordering<rcs>` issues
  * Conversions to device-managed APIs (``devm_`` helpers)
  
  This is because it is felt that the churn that such changes produce comes
  at a greater cost than the value of such clean-ups.
  
  Conversely, spelling and grammar fixes are not discouraged.
  
See: https://www.kernel.org/doc/html/next/process/maintainer-netdev.html#clean-up-patches
