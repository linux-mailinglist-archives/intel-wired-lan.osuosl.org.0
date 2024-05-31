Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7118A8D6297
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 15:14:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BF586075D;
	Fri, 31 May 2024 13:14:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wsoyrfnDzPLf; Fri, 31 May 2024 13:14:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE3786111D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717161269;
	bh=meAf4jGNXXBPsNa4dGu+9CKpqaqxmIMzUKNsKKY829w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xYEXXWCZz9ZeTrqon0OoCQAQakDEkhTKJIh0x9RJN5sy6bi9iKYPKqrZ8P7ngvzsF
	 IhTewmHFan2XVzmSKdSrsZ/1/Q8HBq5vjzh10SKQ3HOzoFTNAAkt0X1HYtZr/w2uz4
	 St0TumXd+omjxpSych8DzIXSFg0vNGn7DvOhoRIHJ91DK25K3gjj3lC4VpGQRd0q//
	 Vm3ABSEmCcZo+0ksN1LMlpNo9Wg29IbHGtkUa/wiyRoFnpCgnlbyYhOMha1y+Yxdpd
	 s1rMvHPsVDzaKY72kXcyC87dBYEWWMximmC5VjAJ50Md3cE4n4RyVPP8xF3e1T4+jP
	 +qDuSn7KlCzDA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE3786111D;
	Fri, 31 May 2024 13:14:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7EF4E1D529C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 13:14:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 779C740AFD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 13:14:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3IjUgs-Gt2zF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 13:14:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1CA3640AF9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CA3640AF9
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1CA3640AF9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 13:14:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 30E7FCE0020;
 Fri, 31 May 2024 13:14:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A107C116B1;
 Fri, 31 May 2024 13:14:18 +0000 (UTC)
Date: Fri, 31 May 2024 14:14:16 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240531131416.GE123401@kernel.org>
References: <20240527185810.3077299-1-ahmed.zaki@intel.com>
 <20240527185810.3077299-3-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527185810.3077299-3-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717161259;
 bh=bCLfhY6NlaWYUZTBrPRCziJRGyr/nA6JhP0LrlD97Jo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c9jA2xP/50OGb6IO3SRIO5Q9WcwFq3EvZueP0/yHWGqGR4DFDEySqKt5L4DC5jGo0
 o3inm4ONYvt58krMmPyqHdDi90v5bbyDR08PUqSYaHHOM6D1chfus3yjwrKNIg9z3P
 8z4UO9hnPUbbmEvbJG4ECXDzGCg2ilXbY39RJwP9E4JhK13fJuPISUH91pfj9DVFGE
 APuxc50uJjpvy01EfEIyiTDso6Tg6PLfZPSufCl2rPj5HsKiNbuRiTFS7tUvxwIQDe
 H0jsnxHtnz8qcnNeLRVS0MAu03E5H7Mv7yk360tXW2xXoxhbr+Td7hdrMI45DPmHjp
 xWJEElavZs8kA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=c9jA2xP/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 02/13] ice: parse and init
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
Cc: Junfeng Guo <junfeng.guo@intel.com>, netdev@vger.kernel.org,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 27, 2024 at 12:57:59PM -0600, Ahmed Zaki wrote:
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

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
> index b7865b6a0a9b..aaec10afea32 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> @@ -3,6 +3,1257 @@
>  
>  #include "ice_common.h"
>  
> +struct ice_pkg_sect_hdr {
> +	__le16 count;
> +	__le16 offset;
> +};
> +
> +/**
> + * ice_parser_sect_item_get - parse a item from a section
> + * @sect_type: section type
> + * @section: section object
> + * @index: index of the item to get
> + * @offset: dummy as prototype of ice_pkg_enum_entry's last parameter

Please consider including a "Return: " clause in new Kernel docs.
This is flagged by ./scripts/kernel-doc -Wall -none.
The -Wall flag was recently added to the Netdev CI.

Likewise elsewhere in this patchset.

> + */
> +static void *ice_parser_sect_item_get(u32 sect_type, void *section,
> +				      u32 index, u32 __maybe_unused *offset)
> +{
> +	size_t data_off = ICE_SEC_DATA_OFFSET;
> +	struct ice_pkg_sect_hdr *hdr;
> +	size_t size;
> +
> +	if (!section)
> +		return NULL;
> +
> +	switch (sect_type) {
> +	case ICE_SID_RXPARSER_IMEM:
> +		size = ICE_SID_RXPARSER_IMEM_ENTRY_SIZE;
> +		break;
> +	case ICE_SID_RXPARSER_METADATA_INIT:
> +		size = ICE_SID_RXPARSER_METADATA_INIT_ENTRY_SIZE;
> +		break;
> +	case ICE_SID_RXPARSER_CAM:
> +		size = ICE_SID_RXPARSER_CAM_ENTRY_SIZE;
> +		break;
> +	case ICE_SID_RXPARSER_PG_SPILL:
> +		size = ICE_SID_RXPARSER_PG_SPILL_ENTRY_SIZE;
> +		break;
> +	case ICE_SID_RXPARSER_NOMATCH_CAM:
> +		size = ICE_SID_RXPARSER_NOMATCH_CAM_ENTRY_SIZE;
> +		break;
> +	case ICE_SID_RXPARSER_NOMATCH_SPILL:
> +		size = ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE;
> +		break;
> +	case ICE_SID_RXPARSER_BOOST_TCAM:
> +		size = ICE_SID_RXPARSER_BOOST_TCAM_ENTRY_SIZE;
> +		break;
> +	case ICE_SID_LBL_RXPARSER_TMEM:
> +		data_off = ICE_SEC_LBL_DATA_OFFSET;
> +		size = ICE_SID_LBL_ENTRY_SIZE;
> +		break;
> +	case ICE_SID_RXPARSER_MARKER_PTYPE:
> +		size = ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE;
> +		break;
> +	case ICE_SID_RXPARSER_MARKER_GRP:
> +		size = ICE_SID_RXPARSER_MARKER_GRP_ENTRY_SIZE;
> +		break;
> +	case ICE_SID_RXPARSER_PROTO_GRP:
> +		size = ICE_SID_RXPARSER_PROTO_GRP_ENTRY_SIZE;
> +		break;
> +	case ICE_SID_RXPARSER_FLAG_REDIR:
> +		size = ICE_SID_RXPARSER_FLAG_REDIR_ENTRY_SIZE;
> +		break;
> +	default:
> +		return NULL;
> +	}
> +
> +	hdr = section;
> +	if (index >= le16_to_cpu(hdr->count))
> +		return NULL;
> +
> +	return (u8 *)section + data_off + (index * size);

nit: I don't think that the cast or parentheses are necessary here.
     Likewise elsewhere in this patchset.

     It's usually not necessary to cast to or from a void * to some other
     type of pointer. And in Networking code it's preferred not to do so.

     Similarly, although sometimes it is best for the sake of clarity,
     it is preferred not to add parentheses where they are not needed.

...

> +/**
> + * ice_imem_alu_init - parse 96 bits of ALU entry
> + * @alu: pointer to the ALU entry structure
> + * @data: ALU entry data to be parsed
> + * @off: offset of the ALU entry data
> + */
> +static void ice_imem_alu_init(struct ice_alu *alu, u8 *data, u8 off)
> +{
> +	u64 d64;
> +	u8 idd;
> +
> +	d64 = *((u64 *)data) >> off;
> +
> +	alu->opc		= FIELD_GET(ICE_IM_ALU_OPC, d64);
> +	alu->src_start		= FIELD_GET(ICE_IM_ALU_SS, d64);
> +	alu->src_len		= FIELD_GET(ICE_IM_ALU_SL, d64);
> +	alu->shift_xlate_sel	= FIELD_GET(ICE_IM_ALU_SXS, d64);
> +	alu->shift_xlate_key	= FIELD_GET(ICE_IM_ALU_SXK, d64);
> +	alu->src_reg_id		= FIELD_GET(ICE_IM_ALU_SRID, d64);
> +	alu->dst_reg_id		= FIELD_GET(ICE_IM_ALU_DRID, d64);
> +	alu->inc0		= FIELD_GET(ICE_IM_ALU_INC0, d64);
> +	alu->inc1		= FIELD_GET(ICE_IM_ALU_INC1, d64);
> +	alu->proto_offset_opc	= FIELD_GET(ICE_IM_ALU_POO, d64);
> +	alu->proto_offset	= FIELD_GET(ICE_IM_ALU_PO, d64);
> +
> +	idd = (ICE_IM_ALU_BA_S + off) / BITS_PER_BYTE;
> +	off = (ICE_IM_ALU_BA_S + off) % BITS_PER_BYTE;
> +	d64 = *((u64 *)(&data[idd])) >> off;
> +
> +	alu->branch_addr	= FIELD_GET(ICE_IM_ALU_BA, d64);
> +	alu->imm		= FIELD_GET(ICE_IM_ALU_IMM, d64);
> +	alu->dedicate_flags_ena	= FIELD_GET(ICE_IM_ALU_DFE, d64);
> +	alu->dst_start		= FIELD_GET(ICE_IM_ALU_DS, d64);
> +	alu->dst_len		= FIELD_GET(ICE_IM_ALU_DL, d64);
> +	alu->flags_extr_imm	= FIELD_GET(ICE_IM_ALU_FEI, d64);
> +	alu->flags_start_imm	= FIELD_GET(ICE_IM_ALU_FSI, d64);
> +}
> +
> +#define ICE_IMEM_BM_S		0
> +#define ICE_IMEM_BKB_S		4
> +#define ICE_IMEM_BKB_IDD	(ICE_IMEM_BKB_S / BITS_PER_BYTE)
> +#define ICE_IMEM_BKB_OFF	(ICE_IMEM_BKB_S % BITS_PER_BYTE)
> +#define ICE_IMEM_PGP		GENMASK(15, 14)
> +#define ICE_IMEM_NPKB_S		16
> +#define ICE_IMEM_NPKB_IDD	(ICE_IMEM_NPKB_S / BITS_PER_BYTE)
> +#define ICE_IMEM_NPKB_OFF	(ICE_IMEM_NPKB_S % BITS_PER_BYTE)
> +#define ICE_IMEM_PGKB_S		34
> +#define ICE_IMEM_PGKB_IDD	(ICE_IMEM_PGKB_S / BITS_PER_BYTE)
> +#define ICE_IMEM_PGKB_OFF	(ICE_IMEM_PGKB_S % BITS_PER_BYTE)
> +#define ICE_IMEM_ALU0_S		69
> +#define ICE_IMEM_ALU0_IDD	(ICE_IMEM_ALU0_S / BITS_PER_BYTE)
> +#define ICE_IMEM_ALU0_OFF	(ICE_IMEM_ALU0_S % BITS_PER_BYTE)
> +#define ICE_IMEM_ALU1_S		165
> +#define ICE_IMEM_ALU1_IDD	(ICE_IMEM_ALU1_S / BITS_PER_BYTE)
> +#define ICE_IMEM_ALU1_OFF	(ICE_IMEM_ALU1_S % BITS_PER_BYTE)
> +#define ICE_IMEM_ALU2_S		357
> +#define ICE_IMEM_ALU2_IDD	(ICE_IMEM_ALU2_S / BITS_PER_BYTE)
> +#define ICE_IMEM_ALU2_OFF	(ICE_IMEM_ALU2_S % BITS_PER_BYTE)
> +
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

I think that in this function data can be used directly in place of buf.

> +
> +	ii->idx = idx;
> +
> +	ice_imem_bm_init(&ii->b_m, *(u8 *)buf);
> +	ice_imem_bkb_init(&ii->b_kb,
> +			  *((u16 *)(&buf[ICE_IMEM_BKB_IDD])) >>
> +			   ICE_IMEM_BKB_OFF);

nit: I suspect that FIELD_GET can be used here.
     And elsewhere where >> is used in this function and
     ice_imem_alu_init().

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

...

> +#define ICE_MI_GBDM_IDD		(ICE_MI_GBDM_S / BITS_PER_BYTE)
> +#define ICE_MI_GBDM_OFF		(ICE_MI_GBDM_S % BITS_PER_BYTE)
> +#define ICE_MI_GBDM		GENMASK_ULL(65 - ICE_MI_GBDM_S, \
> +					    61 - ICE_MI_GBDM_S)

nit: Some macros might make this a bit easier on the eyes (or not?).
     (Completely untested!)

#define ICE_GENMASK_OFF_ULL(high, low, offset) \
	GENMASK_ULL(high - offset, low - offset)

#define ICE_MI_GBDM_GENMASK_ULL(high, low) \
	ICE_GENMASK_OFF_ULL(high, low, ICE_MI_GBDM_S)

#define ICE_MI_GBDS		ICE_MI_GBDM_GENMASK_ULL(69, 66)
...
#define ICE_MI_FLAG		ICE_GENMASK_OFF_ULL(186, 123, ICE_MI_FLAG_S)

> +#define ICE_MI_GBDS		GENMASK_ULL(69 - ICE_MI_GBDM_S, \
> +					    66 - ICE_MI_GBDM_S)
> +#define ICE_MI_GBDL		GENMASK_ULL(74 - ICE_MI_GBDM_S, \
> +					    70 - ICE_MI_GBDM_S)
> +#define ICE_MI_GBI		GENMASK_ULL(80 - ICE_MI_GBDM_S, \
> +					    77 - ICE_MI_GBDM_S)
> +#define ICE_MI_GCC		BIT_ULL(81 - ICE_MI_GBDM_S)
> +#define ICE_MI_GCDM		GENMASK_ULL(86 - ICE_MI_GBDM_S, \
> +					    82 - ICE_MI_GBDM_S)
> +#define ICE_MI_GCDS		GENMASK_ULL(90 - ICE_MI_GBDM_S, \
> +					    87 - ICE_MI_GBDM_S)
> +#define ICE_MI_GCDL		GENMASK_ULL(95 - ICE_MI_GBDM_S, \
> +					    91 - ICE_MI_GBDM_S)
> +#define ICE_MI_GCI		GENMASK_ULL(101 - ICE_MI_GBDM_S, \
> +					    98 - ICE_MI_GBDM_S)
> +#define ICE_MI_GDC		BIT_ULL(102 - ICE_MI_GBDM_S)
> +#define ICE_MI_GDDM		GENMASK_ULL(107 - ICE_MI_GBDM_S, \
> +					    103 - ICE_MI_GBDM_S)
> +#define ICE_MI_GDDS		GENMASK_ULL(111 - ICE_MI_GBDM_S, \
> +					    108 - ICE_MI_GBDM_S)
> +#define ICE_MI_GDDL		GENMASK_ULL(116 - ICE_MI_GBDM_S, \
> +					    112 - ICE_MI_GBDM_S)
> +#define ICE_MI_GDI		GENMASK_ULL(122 - ICE_MI_GBDM_S, \
> +					    119 - ICE_MI_GBDM_S)
> +#define ICE_MI_FLAG_S		123	/* offset for the 3rd 64-bits field */
> +#define ICE_MI_FLAG_IDD		(ICE_MI_FLAG_S / BITS_PER_BYTE)
> +#define ICE_MI_FLAG_OFF		(ICE_MI_FLAG_S % BITS_PER_BYTE)
> +#define ICE_MI_FLAG		GENMASK_ULL(186 - ICE_MI_FLAG_S, \
> +					    123 - ICE_MI_FLAG_S)

...
