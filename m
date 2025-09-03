Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D35B41FE5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 14:51:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 018614113B;
	Wed,  3 Sep 2025 12:51:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Y8WffW6pJ7sY; Wed,  3 Sep 2025 12:51:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08FB44107F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756903883;
	bh=JiaGyqFzj3bxaU2p5B7ztzMPIr+FHeNsXo757DqgCdQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=OMI2cIocirXECp4XOgF5sLtaZkDj/FF+hv+95czIlH8+jBk9hFVSqmt3ejqRJ955c
	 +4hUyli1qS/RbVWq/sMettTkFSDnZ3KJnw3MuxgzL440AFfIQLkAvWy7Db1Fdftb+y
	 UQA8PxnrL6eWNjicfzF8KpS9qZmQVletBMLnMg2hZY134SEATJW9n6oDHH5upZTmYH
	 eIMlzf9smcuoy2RRap+Twg9Dql1uWJbsD6ifJs1HtdgDVwG/9573qXG/jPCBb/Xx74
	 W82rCGdaYwggBj1hRXOuqhwqAr6RYtTfPZom4GvDmsaiHBiAJU70iOmtxWx7McOMDq
	 83UAdE3tp3hIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08FB44107F;
	Wed,  3 Sep 2025 12:51:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 95218439
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 12:51:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7B64341543
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 12:51:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gSgx_99CliVq for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 12:51:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B39A1405D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B39A1405D6
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B39A1405D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 12:51:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id B7D6143248;
 Wed,  3 Sep 2025 12:51:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 786CCC4CEF0;
 Wed,  3 Sep 2025 12:51:18 +0000 (UTC)
Date: Wed, 3 Sep 2025 13:51:16 +0100
From: Simon Horman <horms@kernel.org>
To: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, madhu.chittim@intel.com,
 netdev@vger.kernel.org, Sridhar Samudrala <sridhar.samudrala@intel.com>
Message-ID: <20250903125116.GC361157@horms.kernel.org>
References: <20250903035853.23095-1-pavan.kumar.linga@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250903035853.23095-1-pavan.kumar.linga@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756903879;
 bh=N0Bcbv50hPYmO0pEUw7i4h6uGwwARCZteWWx5lzuoA4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XUBDokaF6DcRW6QH3ytrPJc5Q3LTxaGR/svJowJby3x46AlPy6/W2GNLnU99o8CPY
 pOZtlgu2L/P1Dh7xaDM30wX+ibdRjQc7fMNqZuvV9FN6Y146cv9Qo/3iD/fSU34h+z
 hHRr0kFfuTTLlWifjj1amhusdu7OSItEdR/VfbbtwO3D3WdlaTZGtB2/8znjLDJ/12
 tf0LrIrJBupxpgPdezyypVbZQMEbOBrcdSPQxAnvdTeFWnfdIk86j2/QdOMk6K2uSm
 DHQrdgdM87VYCAlhuNoGkwUc68xVnFDF9CarupugnMgLZVxIQLz1JKeZKGfnERety8
 4g6OmGJG9JrEA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=XUBDokaF
Subject: Re: [Intel-wired-lan] [PATCH net-next v4] idpf: add support for
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

On Tue, Sep 02, 2025 at 08:58:52PM -0700, Pavan Kumar Linga wrote:
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
> Tested this patch by doing a simple driver load/unload on Intel IPU E2000
> hardware which supports 0x1452 and 0x145C device IDs and new hardware
> which supports the IDPF PCI programming interface.
> 
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>

Hi Pavan,

Should this be targeted at iwl, where it applies cleanly,
rather than net-next, where it does not.

If the later, I think that a rebase and repost is appropriate.

...
