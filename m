Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dZOQF/L7HmrybgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 17:51:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3A762FFA3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 17:51:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=YygkYNeD;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=kernel.org (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB39C411DB;
	Tue,  2 Jun 2026 15:51:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RuACtQ96TAFk; Tue,  2 Jun 2026 15:51:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E6271411DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780415468;
	bh=7x17cech0QEHBN2xgd52j16S/dxR37CAYobneoa5SV4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YygkYNeDAfK7ogKc3QyinOZv5fi7X84T/eI4YCkQ3eDDf1TDeiMzmvJK5ybfenw+N
	 SkOCYP7vU89aJObvlJjjWiiwWJ+IhqbDOciB6Ow79+X7UteCJPqbZsNIqxJcCVfGW8
	 g7rGHbHoMg73Mc4Ucww3dieFSWKz5RWNZFJYujGp3PUwFVA3TMX83Dv9yOYbSvNnSl
	 SHQlvkEyo8NSc74zDnnG/VGl65yCBAN3CkSIzWedGenz9M2CPN0xG94JR18Otmn8wd
	 R/q1/in5waZ8n3OtVCVqp6pwcjbmNZ6y02TkjEHMh1N+NXOmSii9AywDusM+2hRMz+
	 L+NRTmMxzkhaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6271411DC;
	Tue,  2 Jun 2026 15:51:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B10EF4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 15:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3C905411D4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 15:51:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RfzhywehcxGJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 15:51:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 55170411D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55170411D9
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 55170411D9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 15:51:07 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 51AA460154;
 Tue,  2 Jun 2026 15:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E542D1F00893;
 Tue,  2 Jun 2026 15:51:04 +0000 (UTC)
From: Simon Horman <horms@kernel.org>
To: aleksandr.loktionov@intel.com
Cc: 'Simon Horman' <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org
Date: Tue,  2 Jun 2026 16:49:12 +0100
Message-ID: <20260602154911.3594793-2-horms@kernel.org>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260527071842.11478-2-aleksandr.loktionov@intel.com>
References: <20260527071842.11478-2-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel.org; s=k20260515; t=1780415466;
 bh=7x17cech0QEHBN2xgd52j16S/dxR37CAYobneoa5SV4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=iI3DhsWnCVU2a0zXrhPD8kRbYo6KjkAvdbUzSjpvqTRC47K5OhiXHO1U4sKocvxTY
 VBPazaHPZllHPSVnNs8HGvOTjh6Ab0v9axIl4e5rlb5gRINzlpJJ4AO2Tz5tXi/1Ic
 S/HJf46ykWDRMb57j89XxAv4dmZ8yqeq0SS28GbYiHFpoqCjoE+/GoVVjqSzkDe23/
 5ApjmLDnJxDPu6yCcVu/FdhcUDxSiQ7ECTusOCZd1ZY/2kXutCUWLbuDIjJCnEJ2Bn
 YTpeAikbsdu2UX9/KxLxwWkkLOgLXVzYBLnEp/QIdSGvJe3Ur8KT71So+eg9f395q1
 qlYHyOepcEZBw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20260515 header.b=iI3DhsWn
Subject: Re: [Intel-wired-lan] [PATCH net] ice: validate FDIR action queue
 index against VF VSI queue count
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,osuosl.org:from_smtp,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AF3A762FFA3

From: 'Simon Horman' <horms@kernel.org>

This is an AI-generated review of your patch. The human sending this
email has considered the AI review valid, or at least plausible.
Full review at: https://sashiko.dev
---
ice: validate FDIR action queue index against VF VSI queue count

This patch adds a bounds check on the VF-supplied queue index in
ice_vc_fdir_parse_action() against vsi->num_rxq for both
VIRTCHNL_ACTION_QUEUE and VIRTCHNL_ACTION_Q_REGION, so a VF cannot
direct matched FDIR traffic to queues outside its own VSI.

> diff --git a/drivers/net/ethernet/intel/ice/virt/fdir.c b/drivers/net/ethernet/intel/ice/virt/fdir.c
> index 4f1f3442e52c..1bc524f3616c 100644
> --- a/drivers/net/ethernet/intel/ice/virt/fdir.c
> +++ b/drivers/net/ethernet/intel/ice/virt/fdir.c
> @@ -1152,6 +1152,7 @@ ice_vc_fdir_parse_action(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,

[ ... ]

> @@ -1176,11 +1181,21 @@ ice_vc_fdir_parse_action(struct ice_vf *vf, struct virtchnl_fdir_add *fltr,
>  			break;
>  		case VIRTCHNL_ACTION_QUEUE:
>  			dest_num++;
> +			if (action->act_conf.queue.index >= vsi->num_rxq) {
> +				dev_dbg(dev, "Invalid queue index %u for VF %d\n",
> +					action->act_conf.queue.index, vf->vf_id);
> +				return -EINVAL;
> +			}
>  			input->dest_ctl = ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_QINDEX;
>  			input->q_index = action->act_conf.queue.index;
>  			break;
>  		case VIRTCHNL_ACTION_Q_REGION:
>  			dest_num++;
> +			if (action->act_conf.queue.index >= vsi->num_rxq) {
> +				dev_dbg(dev, "Invalid queue index %u for VF %d\n",
> +					action->act_conf.queue.index, vf->vf_id);
> +				return -EINVAL;
> +			}
>  			input->dest_ctl = ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_QGROUP;
>  			input->q_index = action->act_conf.queue.index;
>  			input->q_region = action->act_conf.queue.region;

[High]
For the VIRTCHNL_ACTION_Q_REGION case, does this check fully close the
steering hole the commit message describes?

The commit message states that the patch validates the action queue
index for both action types, but the Q_REGION action targets a range
of 2^q_region consecutive queues starting at queue.index, and
action->act_conf.queue.region is still copied verbatim into
input->q_region:

	input->q_index = action->act_conf.queue.index;
	input->q_region = action->act_conf.queue.region;

ice_fdir_fltr documents q_region as:

	/* queue region size (=2^q_region) */
	u8 q_region;

and ice_fdir_get_prgm_desc() programs it into the descriptor's TO_Q
field for the QGROUP destination:

	if (input->dest_ctl ==
	    ICE_FLTR_PRGM_DESC_DEST_DIRECT_PKT_QGROUP)
		fdir_fltr_ctx.toq = input->q_region;
	fdir_fltr_ctx.drop = ICE_FXD_FLTR_QW0_DROP_NO;
	fdir_fltr_ctx.qindex = input->q_index;

ICE_FXD_FLTR_QW0_TO_Q_M is a 3-bit field (0x7), so q_region can be up
to 7, i.e. up to 128 queues starting at q_index.

With the new check, a VF can still set queue.index = vsi->num_rxq - 1
(which passes "index >= vsi->num_rxq") together with queue.region up
to 7, causing the hardware to spread matched traffic across queues
beginning at the last valid VF queue and extending past the end of
the VF's VSI into queues owned by another VF or the PF.

Should the Q_REGION case additionally bound queue.region and verify
that queue.index + (1 << queue.region) <= vsi->num_rxq (and possibly
require queue.index to be aligned to 2^queue.region as is conventional
for hardware queue groups)?
