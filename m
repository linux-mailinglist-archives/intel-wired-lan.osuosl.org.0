Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0449588C53E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 15:35:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A9F17407F9;
	Tue, 26 Mar 2024 14:35:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GEsT6ZADxcwV; Tue, 26 Mar 2024 14:35:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D33F40800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711463753;
	bh=oXBFibEBiPM4VCyCNwTgs7WkYgc3NnouQzCupROCtGM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zWX6LLMkSTHqjv61Qmu7xJ9awRhAeXI7KR3vlLcyRAE3FQF2VMaZ4uw6eQNpaScVY
	 5fNTm8CRtAZfjRh/ry8IwCtNWcbYjJGXgMhmjg0K2YIodFiybEjdbUzPW/DyX4faOo
	 cWTbg/wKqFbePuAOG7XjIAKPM8r8sGiiTNFhLO8otTMyyb8pXskqq4+a/SlW3SmsJk
	 gPoyOyfti1ZgQxbINFK7eprRVptxF4RiE8PHE/VesvAYRrU7BfbWaz6MQxs24WAUB0
	 7JIQoFOsqgTNppJcYUO7ifLI2Ph5/Kvt+D/PX67Sn3hgeqZPW4SFmESwHnZPEROEsi
	 gE41Bg0TzuFxQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D33F40800;
	Tue, 26 Mar 2024 14:35:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8BE761BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:35:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 77CA56082F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:35:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uuEZotZP3eRN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 14:35:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B70E7607B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B70E7607B9
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B70E7607B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:35:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id D23116122C;
 Tue, 26 Mar 2024 14:35:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67517C433F1;
 Tue, 26 Mar 2024 14:35:46 +0000 (UTC)
Date: Tue, 26 Mar 2024 14:35:44 +0000
From: Simon Horman <horms@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <20240326143544.GY403975@kernel.org>
References: <20240325222951.1460656-1-helgaas@kernel.org>
 <20240325222951.1460656-2-helgaas@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240325222951.1460656-2-helgaas@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711463749;
 bh=Ni4Cb8d+9/UtZWDS1MJ8TsKOaKB5beJmlBXXrWRHe/I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ljOk2w0Zq6ZBjwoNgc5qsqetXQWZmTaojsWyb4v2XxO43hoAfYg8lGvzDZDaieq/F
 Dw6U/mn3/Cr60E3fGpxQ96TdizogFMEn4pserO15OvwzLFRz+U6mHZFLTVv2qOcEJg
 lbpFSXHuUX3JdnzuFEXUt5TJhX+4SfVBhgcHosNerAhkIGwtMINQqM5dNASgF4guHv
 +diZgWE7Ecr4m5YEgNirWGkme+EArfZw9tEg25ZDGVzPxqpDfmXb8rNgTQ4tCZzo+9
 mwv0xDYZyGHfagGaScGs9ry9dDrnxjcD5bYe6AICWUKg1LNCPyGOlYD7do/3vHYhi7
 fzJMSBkVa99nw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ljOk2w0Z
Subject: Re: [Intel-wired-lan] [PATCH 1/3] e1000e: Remove redundant runtime
 resume for ethtool_ops
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
Cc: Konstantin Khlebnikov <khlebnikov@openvz.org>,
 Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Zheng Yan <zheng.z.yan@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 25, 2024 at 05:29:49PM -0500, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> e60b22c5b7e5 ("e1000e: fix accessing to suspended device") added
> ethtool_ops.begin() and .complete(), which used pm_runtime_get_sync() to
> resume suspended devices before any ethtool_ops callback and allow suspend
> after it completed.
> 
> 3ef672ab1862 ("e1000e: ethtool unnecessarily takes device out of RPM
> suspend") removed ethtool_ops.begin() and .complete() and instead did
> pm_runtime_get_sync() only in the individual ethtool_ops callbacks that
> access device registers.
> 
> Subsequently, f32a21376573 ("ethtool: runtime-resume netdev parent before
> ethtool ioctl ops") added pm_runtime_get_sync() in the dev_ethtool() path,
> so the device is resumed before *any* ethtool_ops callback, as it was
> before 3ef672ab1862.
> 
> Remove most runtime resumes from ethtool_ops, which are now redundant
> because the resume has already been done by dev_ethtool().  This is
> essentially a revert of 3ef672ab1862 ("e1000e: ethtool unnecessarily takes
> device out of RPM suspend").
> 
> There are a couple subtleties:
> 
>   - Prior to 3ef672ab1862, the device was resumed only for the duration of
>     a single ethtool callback.  3ef672ab1862 changed e1000_set_phys_id() so
>     the device was resumed for ETHTOOL_ID_ACTIVE and remained resumed until
>     a subsequent callback for ETHTOOL_ID_INACTIVE.  Preserve that part of
>     3ef672ab1862 so the device will not be runtime suspended while in the
>     ETHTOOL_ID_ACTIVE state.
> 
>   - 3ef672ab1862 added "if (!pm_runtime_suspended())" in before reading the
>     STATUS register in e1000_get_settings().  This was racy and is now
>     unnecessary because dev_ethtool() has resumed the device already, so
>     revert that.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Reviewed-by: Simon Horman <horms@kernel.org>

