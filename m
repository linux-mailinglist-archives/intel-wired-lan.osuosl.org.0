Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C2EAE28EC
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jun 2025 14:14:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 375C88174D;
	Sat, 21 Jun 2025 12:13:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fGQuX86z_nAA; Sat, 21 Jun 2025 12:13:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAF40807E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750508032;
	bh=HfEnZjfoEyj4xag925X7xxtib6QNWtCv9SjFZFY7CZg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wgL0kpGhlggVndQJp0QtSEX4lUSC/s5Fj2WI5rPSuLnEoHX/2wK/HnM4BN9M6j6a/
	 6is53oTzQTZxysuGtviynzOy8zcJXA4GSi53Wom6y6lChjZ77iV6Id4EiSuwtFGmM3
	 QWtlVyzNYwbRjD1YWOwSJ2iLTuQrn8T8sS2v/BpQ0gSinDfOsBKJM8uJ96q6ilOAC5
	 zJUFE7HWaezpuPbY7FQwpP0dvW+xK5T1vJzHY84HENMxtanW4KRMo+H6W4gRfkAA9t
	 mfTMEcLQYWkxBTe8BKVrFo3LhYpHxb6qdvEUsR/Lwt1jmFaWNt0aSikcz9WccCIdHV
	 ZhaOG8PBv5Rcg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAF40807E8;
	Sat, 21 Jun 2025 12:13:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 884B0C8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jun 2025 12:13:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F07C60724
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jun 2025 12:13:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VOqYcVYC0R5W for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Jun 2025 12:13:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E7EC66070B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7EC66070B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E7EC66070B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Jun 2025 12:13:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 50BD75C20F0;
 Sat, 21 Jun 2025 12:11:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C047C4CEE7;
 Sat, 21 Jun 2025 12:13:48 +0000 (UTC)
Date: Sat, 21 Jun 2025 13:13:46 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Madhu Chittim <madhu.chittim@intel.com>
Message-ID: <20250621121346.GD71935@horms.kernel.org>
References: <20250620171548.959863-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250620171548.959863-1-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750508029;
 bh=RAruDr6SBXBNz/lR+POgRgxABSTjO6lM1PMHGV3mfgQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MGiMFS9Khtj/2vqrD3h9oMuGxs+4QoXV9frEHAr1Qhn0uu0N3hUUn6t1hoA+h4Jm4
 RufIfRY8I0BfWvK41Oun1LqBzi7/ahPLcfIqIW37rWGNVD/g5pVqrOiNalGOSShLdd
 o8+4Hp2wzkDmTLIi9PsWAqH+Sn0iTQ6aFJg9lQVabx4Cz+2Ofccld9kEYr2n+NVhvl
 +kchc8O16Y33Nm4FeVqU1BqxTRT6nbQNU7Cr4Si9XltU9n+P1hyXJ64uDiscB5Nhap
 RQVICFQiEl3wtB6OQPowJ8WCNxyakS2Xy6BVjnzQ4+h6WAgmXSZY9dfAjTPzhrpowM
 iwFpdXBIzfZ3g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=MGiMFS9K
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: preserve coalescing
 settings across resets
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

On Fri, Jun 20, 2025 at 11:15:48AM -0600, Ahmed Zaki wrote:
> The IRQ coalescing config currently reside only inside struct
> idpf_q_vector. However, all idpf_q_vector structs are de-allocated and
> re-allocated during resets. This leads to user-set coalesce configuration
> to be lost.
> 
> Add new fields to struct idpf_vport_user_config_data to save the user
> settings and re-apply them after reset.
> 
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

Hi Ahmed,

I am wondering if this patch also preserves coalescing settings in the case
where.

1. User sets coalescence for n queues
2. The number of queues is reduced, say to m (where m < n)
3. The user then increases the number of queues, say back to n

It seems to me that in this scenario it's reasonable to preserve
the settings for queues 0 to m, bit not queues m + 1 to n.

But perhaps this point is orthogonal to this change.
I am unsure.

...
