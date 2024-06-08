Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACB790118C
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jun 2024 14:58:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE9DC82160;
	Sat,  8 Jun 2024 12:58:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ABeOVZKB7tOh; Sat,  8 Jun 2024 12:58:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E4F483147
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717851494;
	bh=S4ANwUopIwfwga+XjJvydrRMBAZcW3eOAkZyMom4emk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1vexO1SRWr9O+JBBeLSrWnG5awi8y0MQnrpKtkrtpX5P5vRK6Z08oBNieS1rEgOBR
	 knej++FgKRYDwtlhZ8DCBnDWEHwgEPnE3AgPp0m+ycsr/bQ7UBRWTLaNjiIdlI6xZV
	 tipkpoI58jRJXSWxYRIP/JfWk+JAPYAjoi+n0G14MQoW8/l8GuMFE+gvWex8RyGf11
	 f5Vci125MNSVT4c4WGpotJqG3fFwfQ4uHie3Z7Bnp/8JZPTNOO/mkvKCpkbLzino/Q
	 XX+Eu8pFwMDWufXMsH3g1qwD+IqjyT+gjGeT21EAS1ax6F0dGCtLBbdQ6gT/XveC/v
	 FgRQmJPVDBX1g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E4F483147;
	Sat,  8 Jun 2024 12:58:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED41A1BF47E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:58:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E720C40207
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:58:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8nDFRSw8f3cr for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jun 2024 12:58:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CC83E401EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC83E401EB
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CC83E401EB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:58:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 9DC42CE1D29;
 Sat,  8 Jun 2024 12:58:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C69F8C2BD11;
 Sat,  8 Jun 2024 12:58:06 +0000 (UTC)
Date: Sat, 8 Jun 2024 13:58:04 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240608125804.GW27689@kernel.org>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-5-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604131400.13655-5-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717851488;
 bh=PRZGzRzXBZNnTRWY00hkQeI11V75QSfAxDrfYrcrius=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r0gAAVdinC5OSMDSUyxdUGCjZXTpEYE5rEk7L3QUZpOxwl7tstOZgqBRgguwtS3Xk
 +SRFy61xtrHQfphDEAxZfbVfvd3bT6Pd+UVulV7PtyIBAlaQccaGi1nCmQRA8kXRSf
 rhKojg0HEMkZAlB1u5mKrd3OgUm9akXWp66V3auMF31jgWF1+tedk8vNq9tM7332dl
 CYG995UWiPv+NvVjJLRL+6F/fkrpOkA+tcBasQwg4OBRtiL0lQi+OB6I3KncWm1AF5
 8ikrv3j326CLO1FJVpSEFQPiAsgOWdIYRnLpboC3Crk2tIP5oS7rFqix1xFUPWsn5J
 VQ4kPymKoo+AQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=r0gAAVdi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 04/12] iavf: add support
 for negotiating flexible RXDID format
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Wojciech Drewek <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 04, 2024 at 09:13:52AM -0400, Mateusz Polchlopek wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Enable support for VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC, to enable the VF
> driver the ability to determine what Rx descriptor formats are
> available. This requires sending an additional message during
> initialization and reset, the VIRTCHNL_OP_GET_SUPPORTED_RXDIDS. This
> operation requests the supported Rx descriptor IDs available from the
> PF.
> 
> This is treated the same way that VLAN V2 capabilities are handled. Add
> a new set of extended capability flags, used to process send and receipt
> of the VIRTCHNL_OP_GET_SUPPORTED_RXDIDS message.
> 
> This ensures we finish negotiating for the supported descriptor formats
> prior to beginning configuration of receive queues.
> 
> This change stores the supported format bitmap into the iavf_adapter
> structure. Additionally, if VIRTCHNL_VF_OFFLOAD_RX_FLEX_DESC is enabled
> by the PF, we need to make sure that the Rx queue configuration
> specifies the format.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

