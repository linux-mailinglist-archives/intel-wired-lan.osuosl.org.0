Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CE2901197
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jun 2024 14:59:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D567581FB2;
	Sat,  8 Jun 2024 12:59:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KyXqcu6k_A2C; Sat,  8 Jun 2024 12:59:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D928F81F43
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717851584;
	bh=uyjJonjNmr+z8ez/6Ls6msLHmZLGbKFFigohkU1wLiw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YAWj2kwGbegtikiYB/Jc8aXAERT7vKt6J1T6kuwgmzZ+KxmIZqOHLV6znm7ANkhYq
	 0+wc37d1YCpiXkHItBV5nPrR5M/7COCWyK7mvIBQmxz1BuIh58u1pzn/HrUAxcPVTj
	 6X78rGVu/xyLqRu2OM4kSXcZeIbFU/z/q9WL/e0PQD/Nyq7uJNnn6MowXUqQj0tUSt
	 enMA52+VC9tA6OeALrkZ96LyKcmiFShuuIJKJPyykvbGyxedIdMMVGzW93k65c+XNX
	 0e4cDXZ2XfuaC7VSM/O4XI5xQN4uAaBEVb0fDtdoeWjuIrm4MlKCrnocyR19+3cncq
	 fUMiunlCMUs4g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D928F81F43;
	Sat,  8 Jun 2024 12:59:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9BE1F1BF20D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:59:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9550C40207
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:59:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YGh2Kt6kgVoN for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Jun 2024 12:59:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8E456401EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E456401EB
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8E456401EB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Jun 2024 12:59:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 5EA15CE1E80;
 Sat,  8 Jun 2024 12:59:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88917C2BD11;
 Sat,  8 Jun 2024 12:59:37 +0000 (UTC)
Date: Sat, 8 Jun 2024 13:59:35 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240608125935.GB27689@kernel.org>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-10-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604131400.13655-10-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717851578;
 bh=66RBUCctymOeYenWzkI6pbfx5NZQIGtxYRb2XI9dboo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IxNkPtcrsBuKhFjDQbS+XQ/sBAWmsAqHV19so/ntCFq0NFmthYsCjilr9LOPDfveJ
 SP9myWOOeIGLw/YD9HUdr4JOx6XCfevZCPeGVv4yiatN1HUW7m+5erEaGvNZEh7djC
 zaAhpPMTL5Ad0k181LtP8ktLzCHFbECOQFonYZsDkJo02Qw1wQuIA9dxITwydqG2i9
 D6DatlCJ62wFRnoos30ulfL5JWkU2aLRml+nZEEmWlFWYFolGjFXFbhgst2Jssc/3u
 fs78HMIVmUJOA8r9pB/tBFU/EXoXYlplm3CttRkR1u/QxLQMMPzsSTniRLTPew6mJ2
 9UHftVHDoY9yQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=IxNkPtcr
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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

On Tue, Jun 04, 2024 at 09:13:57AM -0400, Mateusz Polchlopek wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Using VIRTCHNL_VF_OFFLOAD_FLEX_DESC, the iAVF driver is capable of
> negotiating to enable the advanced flexible descriptor layout. Add the
> flexible NIC layout (RXDID=2) as a member of the Rx descriptor union.
> 
> Also add bit position definitions for the status and error indications
> that are needed.
> 
> The iavf_clean_rx_irq function needs to extract a few fields from the Rx
> descriptor, including the size, rx_ptype, and vlan_tag.
> Move the extraction to a separate function that decodes the fields into
> a structure. This will reduce the burden for handling multiple
> descriptor types by keeping the relevant extraction logic in one place.
> 
> To support handling an additional descriptor format with minimal code
> duplication, refactor Rx checksum handling so that the general logic
> is separated from the bit calculations. Introduce an iavf_rx_desc_decoded
> structure which holds the relevant bits decoded from the Rx descriptor.
> This will enable implementing flexible descriptor handling without
> duplicating the general logic twice.
> 
> Introduce an iavf_extract_flex_rx_fields, iavf_flex_rx_hash, and
> iavf_flex_rx_csum functions which operate on the flexible NIC descriptor
> format instead of the legacy 32 byte format. Based on the negotiated
> RXDID, select the correct function for processing the Rx descriptors.
> 
> With this change, the Rx hot path should be functional when using either
> the default legacy 32byte format or when we switch to the flexible NIC
> layout.
> 
> Modify the Rx hot path to add support for the flexible descriptor
> format and add request enabling Rx timestamps for all queues.
> 
> As in ice, make sure we bump the checksum level if the hardware detected
> a packet type which could have an outer checksum. This is important
> because hardware only verifies the inner checksum.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

