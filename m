Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDCF939103
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 16:52:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CA1D810F5;
	Mon, 22 Jul 2024 14:52:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bYWNz8d-UC5j; Mon, 22 Jul 2024 14:52:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C70BA810F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721659959;
	bh=uhgzMezHfDJIjdaCofSm00G2IjH8vu4TQTVZaSU1fkQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PDpcZ2kBqDpPLWmr5ye1bltqGTbkwxqaUOpVCCLT8kvjfc8K0nDIBfRfzxHT17KnD
	 uW7P67kcDAgofjRKmDlgGS0nQUoYeJwjk/u80BkhRSIQ9d66wJ3G5kf2OiPK6ELVWo
	 VHmcOK9EPZEPpr/76wcUkAzRDp/IYg+OEVetJe438h0fY96aaNZEi56ftPoGUxI0Wr
	 ezqvVsxdwxlDG0k741X9Vt+/YVo98QMnAg7d6Emg18IlWKgC3gYeA65fUhznSsy8eR
	 ogwLgUd+I+O0ouWRnl3oV4OUb9vJbO6bdqlHk2oH9kiMqnxsPJsGfJXw1PC9Xm3RwV
	 3YOyj0tmZ7jmQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C70BA810F6;
	Mon, 22 Jul 2024 14:52:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F9F21BF286
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 14:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2CC206059E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 14:52:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8F-76BTWVXpV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 14:52:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EE1F8600B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE1F8600B5
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EE1F8600B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 14:52:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id D2646CE09AA;
 Mon, 22 Jul 2024 14:52:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5E44C116B1;
 Mon, 22 Jul 2024 14:52:30 +0000 (UTC)
Date: Mon, 22 Jul 2024 15:52:28 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240722145228.GF715661@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240710204015.124233-3-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721659952;
 bh=X5vtgBbIFY94UZFzz5Z0wVbQf/UQJQkm65kZtdjyOn8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=elys/iBl/kxiwKS/6b6wSQwH+fkjUizOgFjp0/UX1B620RuU4DmO3AkZK3YYqCvJl
 BaIUraxvPLoehVdfrX4SGzfCxXLJDIvG3FDpu4aUfHA8y2IyLvZ/3IDtvOXDXMsNip
 WGS9q3nQnv/m64T2KccMvaaM7cXSL06HimrVY+J2us9BjcNgYJaP+Oo9a3lQ+qsWcN
 dgGSkAW1Fl/kJ290fcqDNb6PBqHAvTv77nI3nH8AF9QEapVREFk7rcXtqT8IlhByyJ
 OuQYUmp7zBWl6CF48eP3J6TAznN+q5hMSunYpLw3tLVt9ebyTppfPDYnVc2i6VJvWN
 0u/QStuZk/quA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=elys/iBl
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 02/13] ice: parse and init
 various DDP parser sections
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

On Wed, Jul 10, 2024 at 02:40:04PM -0600, Ahmed Zaki wrote:
> From: Junfeng Guo <junfeng.guo@intel.com>
> 
> Parse the following DDP sections:
>  - ICE_SID_RXPARSER_IMEM into an array of struct ice_imem_item
>  - ICE_SID_RXPARSER_METADATA_INIT into an array of struct ice_metainit_item
>  - ICE_SID_RXPARSER_CAM or ICE_SID_RXPARSER_PG_SPILL into an array of
>    struct ice_pg_cam_item
>  - ICE_SID_RXPARSER_NOMATCH_CAM or ICE_SID_RXPARSER_NOMATCH_SPILL into an
>    array of struct ice_pg_nm_cam_item
>  - ICE_SID_RXPARSER_CAM into an array of ice_bst_tcam_item
>  - ICE_SID_LBL_RXPARSER_TMEM into an array of ice_lbl_item
>  - ICE_SID_RXPARSER_MARKER_PTYPE into an array of ice_ptype_mk_tcam_item
>  - ICE_SID_RXPARSER_MARKER_GRP into an array of ice_mk_grp_item
>  - ICE_SID_RXPARSER_PROTO_GRP into an array of ice_proto_grp_item
>  - ICE_SID_RXPARSER_FLAG_REDIR into an array of ice_flg_rd_item
>  - ICE_SID_XLT_KEY_BUILDER_SW, ICE_SID_XLT_KEY_BUILDER_ACL,
>    ICE_SID_XLT_KEY_BUILDER_FD and ICE_SID_XLT_KEY_BUILDER_RSS into
>    struct ice_xlt_kb
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Co-developed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

Hi Ahmed, Junfeng, all,

Some minor feedback from my side.

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c

...

> +/**
> + * ice_parser_create_table - create an item table from a section
> + * @hw: pointer to the hardware structure
> + * @sect_type: section type
> + * @item_size: item size in byte
> + * @length: number of items in the table to create
> + * @parse_item: the function to parse the item
> + * @no_offset: ignore header offset, calculate index from 0
> + *
> + * Return: a pointer to the allocated table or ERR_PTR.
> + */
> +static
> +void *ice_parser_create_table(struct ice_hw *hw, u32 sect_type,
> +			      u32 item_size, u32 length,
> +			      void (*parse_item)(struct ice_hw *hw, u16 idx,
> +						 void *item, void *data,
> +						 int size),
> +			      bool no_offset)
> +{
> +	struct ice_pkg_enum state = {};
> +	struct ice_seg *seg = hw->seg;
> +	void *table, *data, *item;
> +	u16 idx = U16_MAX;
> +
> +	if (!seg)
> +		return ERR_PTR(-EINVAL);
> +
> +	table = kzalloc(item_size * length, GFP_KERNEL);
> +	if (!table)
> +		return ERR_PTR(-ENOMEM);
> +
> +	do {
> +		data = ice_pkg_enum_entry(seg, &state, sect_type, NULL,
> +					  ice_parser_sect_item_get);
> +		seg = NULL;
> +		if (data) {
> +			struct ice_pkg_sect_hdr *hdr =
> +				(struct ice_pkg_sect_hdr *)state.sect;

nit: As the type of state.sect is void * I don't think there is a
     need to explicitly cast it to another type of pointer.

			struct ice_pkg_sect_hdr *hdr = state.sect;

> +
> +			if (no_offset)
> +				idx++;
> +			else
> +				idx = le16_to_cpu(hdr->offset) +
> +					state.entry_idx;
> +
> +			item = (void *)((uintptr_t)table + idx * item_size);
> +			parse_item(hw, idx, item, data, item_size);
> +		}
> +	} while (data);
> +
> +	return table;
> +}

...

> +/**
> + * ice_imem_parse_item - parse 384 bits of IMEM entry
> + * @hw: pointer to the hardware structure
> + * @idx: index of IMEM entry
> + * @item: item of IMEM entry
> + * @data: IMEM entry data to be parsed
> + * @size: size of IMEM entry
> + */
> +static void ice_imem_parse_item(struct ice_hw *hw, u16 idx, void *item,
> +				void *data, int __maybe_unused size)
> +{
> +	struct ice_imem_item *ii = item;
> +	u8 *buf = (u8 *)data;

Similarly, I don't think there is a need to explicitly cast here:

	u8 *buf = data;

> +
> +	ii->idx = idx;
> +
> +	ice_imem_bm_init(&ii->b_m, *(u8 *)buf);
> +	ice_imem_bkb_init(&ii->b_kb,
> +			  *((u16 *)(&buf[ICE_IMEM_BKB_IDD])) >>
> +			   ICE_IMEM_BKB_OFF);
> +
> +	ii->pg_prio = FIELD_GET(ICE_IMEM_PGP, *(u16 *)buf);
> +
> +	ice_imem_npkb_init(&ii->np_kb,
> +			   *((u32 *)(&buf[ICE_IMEM_NPKB_IDD])) >>
> +			    ICE_IMEM_NPKB_OFF);
> +	ice_imem_pgkb_init(&ii->pg_kb,
> +			   *((u64 *)(&buf[ICE_IMEM_PGKB_IDD])) >>
> +			    ICE_IMEM_PGKB_OFF);
> +
> +	ice_imem_alu_init(&ii->alu0,
> +			  &buf[ICE_IMEM_ALU0_IDD],
> +			  ICE_IMEM_ALU0_OFF);
> +	ice_imem_alu_init(&ii->alu1,
> +			  &buf[ICE_IMEM_ALU1_IDD],
> +			  ICE_IMEM_ALU1_OFF);
> +	ice_imem_alu_init(&ii->alu2,
> +			  &buf[ICE_IMEM_ALU2_IDD],
> +			  ICE_IMEM_ALU2_OFF);
> +}
> +
> +/**
> + * ice_imem_table_get - create an imem table
> + * @hw: pointer to the hardware structure
> + *
> + * Return: a pointer to the allocated IMEM table.
> + */
> +static struct ice_imem_item *ice_imem_table_get(struct ice_hw *hw)
> +{
> +	return (struct ice_imem_item *)
> +		ice_parser_create_table(hw, ICE_SID_RXPARSER_IMEM,
> +					sizeof(struct ice_imem_item),
> +					ICE_IMEM_TABLE_SIZE,
> +					ice_imem_parse_item, false);
> +}

Or here.
And, likewise, for other similar calls to ice_parser_create_table().

...

