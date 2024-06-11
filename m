Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11983902E93
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 04:48:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71DC160891;
	Tue, 11 Jun 2024 02:48:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id raiLDQYUHx8D; Tue, 11 Jun 2024 02:48:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACE3C607FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718074085;
	bh=qrV5M5Oa94KfTnD8dv2IjeL/Nr9X5OAVeaWIXx3dpAM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OSiS06+Gyu4obRLEh94L6NaprVqB4KOXETfwDgC4RuM4y+kcMNs8FDb8IuZy5OgPE
	 dFT0l5hQnLpDx0bhUeVprWGHGQ10NzJQDYuPeFtqKjhtfucwX5gf4IoycyeunavSO4
	 V9sdM3H7uvhmQhzaiO9Hm6w4J0IgdR58myd13UvUZEogtzAOeTLoKb+/YUQ1ns17lr
	 9jQsWos5ow2jFjjB/XpormsAp32qEPUCTUgamw+2uN4naYHcRjssZMFwqPgYiUAwDJ
	 K/sgMHY5ryFQ6g3Qg3ChMgjTX/1MRGoiXCkJcgcg6QFX5bHcfs3SUGvgk1n51bpqQc
	 ATvS9yh3cf55A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ACE3C607FF;
	Tue, 11 Jun 2024 02:48:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BFE641BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 02:48:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B892F40B2B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 02:48:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wwLWT73PU8O1 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 02:48:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A5CA8400DC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5CA8400DC
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A5CA8400DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 02:48:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 8F7A2CE0F18;
 Tue, 11 Jun 2024 02:47:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FA2EC2BBFC;
 Tue, 11 Jun 2024 02:47:57 +0000 (UTC)
Date: Mon, 10 Jun 2024 19:47:56 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Message-ID: <20240610194756.5be5be90@kernel.org>
In-Reply-To: <20240607121552.15127-1-dawid.osuchowski@linux.intel.com>
References: <20240607121552.15127-1-dawid.osuchowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718074077;
 bh=U98cOt1tqguDTBN6tdARL6YiSSn7Q2AcTfocRE7XTLA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VR9YtHM+nmG/MtgCBprW2vEIANJvrsNx36+QS1u1eRwei3YeORbuiqJSVBENkoCTN
 znL4T1yUXLeLkPa9PtTFDFqPZWp6JXZerJYNE/6N6lFrUogRj3IStSSJLg1HujN75b
 4Cni6gbLSdwiW/nZkQrb5sx5euV9QjsTsLkBlaF/zJ/HelHv0R+jkFtP4sMW0r8v8h
 tD194z33zrIofZLzjn0HMgnBCpWVOV7zyaniETTbnOPm7jmYfSJUX+CVFNzecpswCQ
 CCGfVuQvom0Pd+lN7MsP3lkVEMK+FUJHgVupy/XtFnm+LXhCvUIlPGR9pLp7QG/HWP
 Ba8yM5J4txNzg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=VR9YtHM+
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] ice: Do not get coalesce
 settings while in reset
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
Cc: Ngai-Mint Kwan <ngai-mint.kwan@intel.com>, netdev@vger.kernel.org,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri,  7 Jun 2024 14:15:52 +0200 Dawid Osuchowski wrote:
> We cannot use ice_wait_for_reset() since both the ethtool handler and the
> adapter reset flow call rtnl_lock() during operation. If we wait for
> reset completion inside of an ethtool handling function such as
> ice_get_coalesce(), the wait will always timeout due to reset being
> blocked by rtnl_lock() inside of ice_queue_set_napi() (which is called
> during reset process), and in turn we will always return -EBUSY anyways,
> with the added hang time of the timeout value.

Why does the reset not call netif_device_detach()?
Then core will know not to call the driver.

> Fixes: 67fe64d78c43 ("ice: Implement getting and setting ethtool coalesce")

Isn't ice_queue_set_napi() much more recent than this commit?
