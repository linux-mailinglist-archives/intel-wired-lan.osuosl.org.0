Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B0584BD8D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 19:57:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C3FC82F8A;
	Tue,  6 Feb 2024 18:57:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qkgEg1FtFMi3; Tue,  6 Feb 2024 18:57:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6214382F39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707245866;
	bh=idaw42VzVYgmTWJWmc6dWKh3k74ScDTb8FzUcW99z+4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F7E5OKLpl3e25vZugjAidPvv3Henjxl75PEyakBpx/S+y2w9LhpGURc6z37MxwUWE
	 KA9vl2C3KO7innMKVB/C8eN4RMs2QHE38nZNx3iLuEWlUpWA5FiJQm7dt35aM5WAwW
	 Clb8bJkaJ1N7Byr8sm2kRxxu33+zPPWj/9MEuTZq4VfwXMyjmw9mFs1mAU4eJGJG5n
	 dpMpZE9kGpk/0WwuDzk3uc6w5pihEjWGu6mub35PNr+8idHL7Dk+IexAKOazOvCdB8
	 N8NsgpretfvRPe6M1coDlu7nf01Tj9m0sxnyJBA4QRrVcRII/FefGO5ChmMnMe5WOH
	 qEdfBHBImsalg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6214382F39;
	Tue,  6 Feb 2024 18:57:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 852431BF31F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 18:57:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6FEBB41F93
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 18:57:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iEfH1lKZAkIF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 18:57:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B05D641F91
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B05D641F91
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B05D641F91
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 18:57:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id B7E86CE1732;
 Tue,  6 Feb 2024 18:57:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF973C433C7;
 Tue,  6 Feb 2024 18:57:38 +0000 (UTC)
Date: Tue, 6 Feb 2024 10:57:37 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alan Brady <alan.brady@intel.com>
Message-ID: <20240206105737.50149937@kernel.org>
In-Reply-To: <20240206033804.1198416-1-alan.brady@intel.com>
References: <20240206033804.1198416-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1707245859;
 bh=yze97PLevIR5v5XRlpkb6itN7k0C+IJTA+1uqBGxofg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=F0rw0CywJvwA3cBGlQfIHZFVlwvZN+QeuP4XY56WqASoW6FGkpR8t4Wl4mqQde3Di
 z8R91edHgliluDlQJjeoLt6uVgNwJ+AG64sAkTxDJekYm5IzTN7eBzUj2vvetaFUWH
 YUhmWhTAyNEe5bHxULEt+CYkOSykLxDYlO/RWALcDzdJr+KgXEKZ3ILHBwW17YH/zG
 csfCzRaxTlzjPAVRoIHIxn16QAdntibW1cCmQ0xFZhyUJwxhhL+bfUuao0k1otlJwe
 B0Uchxiw4UaxRiGwIBo9rbZ7ZGLq4uo46hEl+7ukQEbL2QF1xSTDaLaXQEmfRv/WZq
 qVi0tcVOzp9ZQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=F0rw0Cyw
Subject: Re: [Intel-wired-lan] [PATCH v4 00/10 iwl-next] idpf: refactor
 virtchnl messages
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
Cc: willemdebruijn.kernel@gmail.com, netdev@vger.kernel.org,
 aleksander.lobakin@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com, igor.bagnucki@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon,  5 Feb 2024 19:37:54 -0800 Alan Brady wrote:
> The motivation for this series has two primary goals. We want to enable
> support of multiple simultaneous messages and make the channel more
> robust. The way it works right now, the driver can only send and receive
> a single message at a time and if something goes really wrong, it can
> lead to data corruption and strange bugs.

Coccinelle points out some potential places to use min()

testing/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1956:17-18: WARNING opportunity for min()
testing/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1271:17-18: WARNING opportunity for min()
testing/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1319:17-18: WARNING opportunity for min()
testing/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:2640:17-18: WARNING opportunity for min()
testing/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:1295:17-18: WARNING opportunity for min()
testing/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:2157:17-18: WARNING opportunity for min()
testing/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c:3582:17-18: WARNING opportunity for min()
-- 
pw-bot: au
