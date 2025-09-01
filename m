Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6FBB3E644
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Sep 2025 15:56:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C66561363;
	Mon,  1 Sep 2025 13:56:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YS1K5ZynzzL3; Mon,  1 Sep 2025 13:56:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D2A5613BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756735002;
	bh=OgjHgfXFmrJuDSDEQwnED0AwPVrucC/NwIldpxyeuVg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d7L6kft/cKMrjhWb98nyWWoi1RV7SlSM+ybrn3xQnIN6Nh5lfeq/ODvZ9MUMKSFv7
	 UpYY+e+fYGmaVNnFvyghRlAprOuEGAunvvTBzGN208tPAQXVlJHylwzX7Vk626LelK
	 0hbRSUyOTYX6zAHdBnsy35Rfg2YWOXKO1pTPV9y8CNRAMwz9Blgg8DbaQ8EEq0yW4T
	 EeV/oSkLOp0e2dmBNkuKewBF1+4P7wOtKTfuGookNiM3xq2aprEfsHgxuRwuNsFJ3W
	 lv5OF6lnobzleOq4KgpD95qCPWhqaLf6NjBnxWmtCRaGKdu6aGEd/KhdjZ9zK+Rucl
	 9sCdXQ3Ww8Rbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D2A5613BD;
	Mon,  1 Sep 2025 13:56:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 01BADD2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 13:56:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB84E60BE4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 13:56:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UHYds6NVXUIn for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Sep 2025 13:56:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1CA4860D9F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CA4860D9F
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1CA4860D9F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 13:56:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 9E2D0601D9;
 Mon,  1 Sep 2025 13:56:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89A7FC4CEF1;
 Mon,  1 Sep 2025 13:56:37 +0000 (UTC)
Date: Mon, 1 Sep 2025 14:56:35 +0100
From: Simon Horman <horms@kernel.org>
To: Madhu Chittim <madhu.chittim@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250901135635.GD15473@horms.kernel.org>
References: <20250829172453.2059973-1-madhu.chittim@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250829172453.2059973-1-madhu.chittim@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756734998;
 bh=asAQ1rU9wQg5Jw8z/zz8HqbStFkcokLIB+1C8gbNlTQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jwx9lZUNn5ud6c3n50UvP8qILOvFaDF9ecgpIMT+IhtAE1GICx2ncUFL52zwD52QR
 RNIkVrYh20XkvqT9qPl5Fb3DNbz2bF+xbEEcOPkcu4zaeVMUl/YQdIgURBelQIrctk
 w9mm3LClKEAKppAfjjBuvZAZY4LsIC+jwdHONqtpbZZEP2CcgR0neVI1KCB81hxDeI
 bVKW52nrJyFnN1yIXDeA+iAHkQEGt3bJtn3KpNFmP6A/TqYJFdOhJOnB+9Cg2ngn34
 gl7GKWREc8ILb+LhZBgHdIyZvAF4eWwAWy06pDQXh4g5Hs8Kx6tF+TAnRiXtXdHHpr
 739dR6kWtkLCQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jwx9lZUN
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] idpf: add support for
 IDPF PCI programming interface
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

On Fri, Aug 29, 2025 at 10:24:53AM -0700, Madhu Chittim wrote:
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> 
> At present IDPF supports only 0x1452 and 0x145C as PF and VF device IDs
> on our current generation hardware. Future hardware exposes a new set of
> device IDs for each generation. To avoid adding a new device ID for each
> generation and to make the driver forward and backward compatible,
> make use of the IDPF PCI programming interface to load the driver.
> 
> Write and read the VF_ARQBAL mailbox register to find if the current
> device is a PF or a VF.
> 
> PCI SIG allocated a new programming interface for the IDPF compliant
> ethernet network controller devices. It can be found at:
> https://members.pcisig.com/wg/PCI-SIG/document/20113
> with the document titled as 'PCI Code and ID Assignment Revision 1.16'
> or any latest revisions.
> 
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> 
> ---
> v3:
> - reworked logic to avoid gotos

Thanks,

I see that Paul has provided some review, which I don't disagree with.
But overall this looks good to me. Feel free to add.

Reviewed-by: Simon Horman <horms@kernel.org>

...
