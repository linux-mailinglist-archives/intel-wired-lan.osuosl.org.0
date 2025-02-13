Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BC6A3350E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 02:59:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5FD1160A9D;
	Thu, 13 Feb 2025 01:59:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xhhlGY1A-rkv; Thu, 13 Feb 2025 01:59:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4BC9607B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739411947;
	bh=1xcTsFSzADhN016qscfqZw0KvHZz2jgAMm4VkDIadQs=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GXDseQ36MZ4IpEI/kxdKUu2KkU7XjNUZ3ETdZC7qK8+I4VYX4fIXegi1DBaodS502
	 r+OiJ9I49EUdQsxpwv2XeIGuKXn9KVEVoqf6SuW9Dh7h/jaSzX/ed6Yxdp7uOuaP0T
	 LrbS0DSwA4Kv3/bJmo1naGBew4by98xYlFN8N+YhStx4reUxeYawhTruRDcuD995db
	 rXr+qfYBGUPak10L4Ie9kGShTSbA0YJb5IpgmfepgIkPDxWUZxeKaqaTj6keUk5JqO
	 vSbg8sdUVpu1vagBvCldyuMu7C427FcftWBsBnAzryRDWgcE1xMjn5oR8sP2Tyfpqb
	 6Y7oYC8espNyQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4BC9607B5;
	Thu, 13 Feb 2025 01:59:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1885E1A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 01:59:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F0EC381F07
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 01:59:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ygy3wyRor5a3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 01:59:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 68FEE81459
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68FEE81459
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68FEE81459
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 01:59:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B1E705C5B42;
 Thu, 13 Feb 2025 01:58:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FE85C4CEDF;
 Thu, 13 Feb 2025 01:59:02 +0000 (UTC)
Date: Wed, 12 Feb 2025 17:59:01 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 "Paolo Abeni" <pabeni@redhat.com>, Jacob Keller <jacob.e.keller@intel.com>,
 "Wojciech Drewek" <wojciech.drewek@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <kernel-janitors@vger.kernel.org>
Message-ID: <20250212175901.11199ce1@kernel.org>
In-Reply-To: <f66b15a3-1d83-43f9-8af2-071b76b133c0@intel.com>
References: <14ebc311-6fd6-4b0b-b314-8347c4efd9fc@stanley.mountain>
 <f66b15a3-1d83-43f9-8af2-071b76b133c0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739411942;
 bh=5e9tQdjyUtvFsdWFPY66rgy1K6uwxdwMbTMFDYcH4wI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Un+iAw/y1U6YD1qlsbtOYvwBpsZG4kOuALtUoheHGABfL+Eu7bruJ5XaiPm094Zx/
 KEFiM6zyg3J1Ym9fVWNxRCeulk3FdwvAj8e0RC1bo5BI7jvFjeqEv1lJxOJheUfD63
 TWX0DtHHX/pS1Xa9zHcwItl+LxS9DhXV1gp0Xb7bFLr28g6ZZKaI8+P27Y+OsA9ReS
 r7SJ9VpXDOlBx3hVZFWXYLhvgzLI8EsGrugVjyTBxwojBPZe90RiGgxVWWueOJZU7z
 zFwmUUjmKY82LWkOYDt+WJl/2rQR0x3s2aSZdd+4hFIIesZF/Sil6TxjzcV47xafi6
 tLTCI+eMv3+TQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Un+iAw/y
Subject: Re: [Intel-wired-lan] [PATCH next] ice: Fix signedness bug in
 ice_init_interrupt_scheme()
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

On Wed, 12 Feb 2025 17:46:54 +0100 Alexander Lobakin wrote:
> > [PATCH next] ice: Fix signedness bug in ice_init_interrupt_scheme()  
> 
> I believe it should be "PATCH net" with
> 
> > If pci_alloc_irq_vectors() can't allocate the minimum number of vectors
> > then it returns -ENOSPC so there is no need to check for that in the
> > caller.  In fact, because pf->msix.min is an unsigned int, it means that
> > any negative error codes are type promoted to high positive values and
> > treated as success.  So here the "return -ENOMEM;" is unreachable code.
> > Check for negatives instead.
> > 
> > Fixes: 79d97b8cf9a8 ("ice: remove splitting MSI-X between features")  
> 
> a 'Stable:' tag here.

Bug only exists in net-next if it comes from commit under Fixes.
So I think the patch is good as is.
