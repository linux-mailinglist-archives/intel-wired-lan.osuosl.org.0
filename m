Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC313B54661
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 11:02:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82D2740D57;
	Fri, 12 Sep 2025 09:02:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nZteu2JcEKyQ; Fri, 12 Sep 2025 09:02:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E4F2840D37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757667766;
	bh=BmHI5ZxH3PcUG+5QPcHS1rZq+otHX6go6bEI2sliGOw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OAfgv/5KPvCpINI+pjJstLztKpsulOwvJGcX0tTxWoCrdk5cFVnoAGU690VYh6uJh
	 1xG8L7QKgQ+exFM5MTCXX/D+X3Tjo0hs/1OEPgSuFDKndCWYoQefpOEFtJR0pgzURq
	 RFcqfK/HEc26GcOufLfOhs9/m7InXPbCXUPKOvszvtEjeLfRASinhMlZnoKEV3RdOX
	 Qr6eo8HNtdipLiaUB55cBWe8Sond+3984OnOXvY1QV+GR06sE7dqu5aGyM8tTlSfTY
	 346nBfrUlYQgHD9Eh2PQLAn5jKXoKtxNyYI7/cpzGyvTcPAwhuwXcb9k3nXywDum7w
	 6z2pnB/F0zAnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E4F2840D37;
	Fri, 12 Sep 2025 09:02:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 021FA92E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:02:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F37BD821F4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:02:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qJIx13SrbcKS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 09:02:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 31CF6821F3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31CF6821F3
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 31CF6821F3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:02:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 66783601E8;
 Fri, 12 Sep 2025 09:02:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B7CDC4CEF1;
 Fri, 12 Sep 2025 09:02:40 +0000 (UTC)
Date: Fri, 12 Sep 2025 10:02:37 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250912090237.GU30363@horms.kernel.org>
References: <20250829101809.1022945-1-aleksandr.loktionov@intel.com>
 <20250829101809.1022945-3-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250829101809.1022945-3-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757667762;
 bh=kL/p2Bsx1e7gqZn5NE8Tk9hEj2FkuAQnySmNEsb4J2U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YgxJw5iMZUE/m57Rj4X3dmhS/VmzOC7ecD4Fk+VryPGNOshk3H78yH4BV3yxecy8R
 ldtVpbEbDudS3hdPsVGuq0vBA1DCvGQ/WTHDAyKC/cZVcJNHL4a3gE59aH+wUrhxYU
 izwS2YhdLzOaxf/zJi9ZDiB3EnPYYk6G+xo+6/uU1zXUrC+0GSNzl9F4LcHn4ftPoT
 Uq+ZZC6HbcigRjnzY9x43AsgbLLhzr4CIj4fAvOaw2BjeSVjszxp6CIHjcEJwGKobg
 xY9be7BwX5ZXHopiT6RQ5GJL41Ga7GInROw5YzAXRzlgRFOCyWsRfGvrrlb37t1fH5
 0rwJq+HZMg7Bg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=YgxJw5iM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/5] ice: add virtchnl and
 VF context support for GTP RSS
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
Cc: Dan Nowlin <dan.nowlin@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, Qi Zhang <qi.z.zhang@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 29, 2025 at 10:18:05AM +0000, Aleksandr Loktionov wrote:
> Introduce infrastructure to support GTP-specific RSS configuration
> in the ICE driver, enabling flexible and programmable flow hashing
> on virtual functions (VFs).
> 
>  - Define new virtchnl protocol header and field types for GTPC, GTPU,
>    L2TPv2, ECPRI, PPP, GRE, and IP fragment headers.
>  - Extend virtchnl.h to support additional RSS fields including checksums,
>    TEID, QFI, and IPv6 prefix matching.
>  - Add VF-side hash context structures for IPv4/IPv6 and GTPU flows.
>  - Implement context tracking and rule ordering logic for TCAM-based
>    RSS configuration.
>  - Introduce symmetric hashing support for raw and tunnel flows.
>  - Update ice_vf_lib.h and virt/rss.c to handle advanced RSS
>    configuration via virtchnl messages.
> 
> VFs can express RSS configuration for GTP flows
> using ethtool and virtchnl, laying the foundation for tunnel-aware
> RSS offloads in virtualized environments.
> 
> Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Co-developed-by: Jie Wang <jie1x.wang@intel.com>
> Signed-off-by: Jie Wang <jie1x.wang@intel.com>
> Co-developed-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Co-developed-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Co-developed-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Ting Xu <ting.xu@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Aside from the minor comment below, this looks good to me.
So with that addressed, feel free to add:

Reviewed-by: Simon Horman <horms@kernel.org>

> diff --git a/drivers/net/ethernet/intel/ice/virt/rss.c b/drivers/net/ethernet/intel/ice/virt/rss.c

...

> +/**
> + * ice_parse_raw_rss_pattern - Parse raw pattern spec and mask for RSS
> + * @vf: pointer to the VF info
> + * @proto: pointer to the virtchnl protocol header
> + * @raw_cfg: pointer to the RSS raw pattern configuration
> + *
> + * Parser function to get spec and mask from virtchnl message, and parse
> + * them to get the corresponding profile and offset. The profile is used
> + * to add RSS configuration.
> + *
> + * Return: 0 on success; negative error code on failure.
> + */
> +static int
> +ice_parse_raw_rss_pattern(struct ice_vf *vf, struct virtchnl_proto_hdrs *proto,
> +			  struct ice_rss_raw_cfg *raw_cfg)
> +{
> +	struct ice_parser_result pkt_parsed;
> +	struct ice_hw *hw = &vf->pf->hw;
> +	struct ice_parser_profile prof;
> +	u16 pkt_len;
> +	struct ice_parser *psr;
> +	u8 *pkt_buf, *msk_buf;
> +	int ret = 0;
> +
> +	pkt_len = proto->raw.pkt_len;
> +	if (!pkt_len)
> +		return -EINVAL;
> +	if (pkt_len > VIRTCHNL_MAX_SIZE_RAW_PACKET)
> +		pkt_len = VIRTCHNL_MAX_SIZE_RAW_PACKET;
> +
> +	pkt_buf = kzalloc(pkt_len, GFP_KERNEL);
> +	msk_buf = kzalloc(pkt_len, GFP_KERNEL);
> +	if (!pkt_buf || !msk_buf) {
> +		ret = -ENOMEM;
> +		goto free_alloc;
> +	}
> +
> +	memcpy(pkt_buf, proto->raw.spec, pkt_len);
> +	memcpy(msk_buf, proto->raw.mask, pkt_len);
> +
> +	psr = ice_parser_create(hw);
> +	if (IS_ERR(psr)) {
> +		ret = PTR_ERR(psr);
> +		goto parser_destroy;

I think this one should be goto free_alloc.
Else there will be a NULL pointer dereference in ice_parser_destroy().

> +	}
> +
> +	ret = ice_parser_run(psr, pkt_buf, pkt_len, &pkt_parsed);
> +	if (ret)
> +		goto parser_destroy;
> +
> +	ret = ice_parser_profile_init(&pkt_parsed, pkt_buf, msk_buf,
> +				      pkt_len, ICE_BLK_RSS, &prof);
> +	if (ret)
> +		goto parser_destroy;
> +
> +	memcpy(&raw_cfg->prof, &prof, sizeof(prof));
> +
> +parser_destroy:
> +	ice_parser_destroy(psr);
> +free_alloc:
> +	kfree(pkt_buf);
> +	kfree(msk_buf);
> +	return ret;
> +}
