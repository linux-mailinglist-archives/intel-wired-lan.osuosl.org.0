Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C27DD939142
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 17:02:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F69281131;
	Mon, 22 Jul 2024 15:02:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qj2IrH4p8lIf; Mon, 22 Jul 2024 15:02:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90759810ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721660561;
	bh=EGDJe4WMUXJhUhyzMrVXmI61qj4Ijz1koVsFxzyHinI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=slkZ/zRaGEa4VUuMTTuwehqlyq+sgyF55PI1nbd3OY9SDiOlr2LUZ0Tk9cRBudeF0
	 s/Gb5kZGjN451aZen14BeJkUkcx5NKFFUOB1KuXU2c9XNnPzsBXtYNwf1PzQsktc9y
	 2Xz8bJ3d46n1dEAvSavLTF8lIfluonBlI2ojmGsjZ+Oo1ue8zH4K8FaE7CKH5ktcts
	 56T6kGyMik6HBsURoztFVQSi1wo491TYoe4BkhXpayOADAGRTLEYzGvgAs2y5dH6UZ
	 +T70YL4v9dvDkQ8ChpjGfJbV9rAOCSaOXhuLHpEtNbVcY9jW7djQQRActg2Tws3t+H
	 A8z/I1TnduOmQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 90759810ED;
	Mon, 22 Jul 2024 15:02:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C329F1BF8A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:02:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF57240448
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:02:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TKvS_KKnY-nL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 15:02:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A81DB40109
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A81DB40109
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A81DB40109
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:02:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id E633960B56;
 Mon, 22 Jul 2024 15:02:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54D26C4AF11;
 Mon, 22 Jul 2024 15:02:36 +0000 (UTC)
Date: Mon, 22 Jul 2024 16:02:34 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240722150234.GI715661@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-7-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240710204015.124233-7-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721660557;
 bh=pAk0rVV50P2Q+ArDebksQq7XsI+EGNKBGEJfMCA5Sqk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Yq9kbjRLugWzyckQ9EdM8GYrf3Wl/LbMZXQ69ozdR8Bv9+VZz9C0CJGBYvxSXtIrd
 Qzcp+P4Zm8I8QbOYYyjvObn7wVP1XLzL4f0r81R3jP7atc2qjVk/NizMGO3WvHqvL7
 LofbBg1ReVb8eBgV9jvr0Tyteu2Y0+KSeqbxSz9KLL2ArgpqcL4AdTIazWK+drY7Zj
 LuvPCnRqKvaw/FrKECOxn5yZHYhWJR2+0iA9b8vKby04fLV30dqVKuf8/ABIEewOvS
 D7/L7M+DpEMQ1AtbtPqBOwYjN+moN3cwjAYGZ9qi2yxWC8VoUIl6Am3T1MWIPu+Uqc
 JtWT+RAp+PfDw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Yq9kbjRL
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 06/13] ice: support
 turning on/off the parser's double vlan mode
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org, Junfeng Guo <junfeng.guo@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 10, 2024 at 02:40:08PM -0600, Ahmed Zaki wrote:
> From: Junfeng Guo <junfeng.guo@intel.com>
> 
> Add API ice_parser_dvm_set() to support turning on/off the parser's double
> vlan mode.
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_parser.c | 78 ++++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_parser.h | 18 +++++
>  2 files changed, 93 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c

...

>  static void ice_parse_lbl_item(struct ice_hw *hw, u16 idx, void *item,
> -			       void *data, int size)
> +			       void *data, int __maybe_unused size)
>  {
> -	memcpy(item, data, size);
> +	struct ice_lbl_item *lbl_item = (struct ice_lbl_item *)item;
> +	struct ice_lbl_item *lbl_data = (struct ice_lbl_item *)data;

nit: Explicitly casting void * is unnecessary.

> +
> +	lbl_item->idx = lbl_data->idx;
> +	memcpy(lbl_item->label, lbl_data->label, sizeof(lbl_item->label));
> +
> +	if (strstarts(lbl_item->label, ICE_LBL_BST_DVM))
> +		lbl_item->type = ICE_LBL_BST_TYPE_DVM;
> +	else if (strstarts(lbl_item->label, ICE_LBL_BST_SVM))
> +		lbl_item->type = ICE_LBL_BST_TYPE_SVM;
>  
>  	if (hw->debug_mask & ICE_DBG_PARSER)
> -		ice_lbl_dump(hw, (struct ice_lbl_item *)item);
> +		ice_lbl_dump(hw, lbl_item);
>  }

...

> +static void ice_bst_dvm_set(struct ice_parser *psr, enum ice_lbl_type type,
> +			    bool on)
> +{
> +	u16 i = 0;
> +
> +	while (true) {
> +		struct ice_bst_tcam_item *item;
> +		u8 key;
> +
> +		item = ice_bst_tcam_search(psr->bst_tcam_table,
> +					   psr->bst_lbl_table,
> +					   type, &i);
> +		if (!item)
> +			break;
> +
> +		key = (on ? ICE_BT_VLD_KEY : ICE_BT_INV_KEY);

nit: these parentheses seem unnecessary

> +		item->key[ICE_BT_VM_OFF] = key;
> +		item->key_inv[ICE_BT_VM_OFF] = key;
> +		i++;
> +	}
> +}

...
