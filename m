Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E947878580C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 14:50:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3A5281442;
	Wed, 23 Aug 2023 12:50:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3A5281442
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692795018;
	bh=1onBSiSJqhPjB2CzQL5O0bDjItF9SzbIea0sVKKZNDY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DXg26aVq1Ba+2fG6LVAMOiPq7lWoLgcq85CuVgpCVHqzboV65ZRCNywxSmRFoIycY
	 Ltzu6oMi1oAjSzPJqnwQIWpduW90gppzQ6QDd3I5SrXgNkRZEpAHsTOknKZ+az0Vu8
	 VJvQ9EvEJNOXG+YHEm8fpEo4ZqComm5+8t5dY+irWKCV7sfnpydpVm5+NMi6V2thOR
	 B/jty5ad7XlVPIE2324yJF0wtGXjFwJul5NpycwKqeyjDPGNBhHz2v3kXBNGVt9X4c
	 fLcPJ6qL0rWXX4nfg0EHu9Pw5pw4gCwpZIIfyvDYXLW02qoE8n+iQEBu1rJVgo0vgD
	 SH5Tx4vi71k/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wXJ2lb6hkTHh; Wed, 23 Aug 2023 12:50:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86A0A8143D;
	Wed, 23 Aug 2023 12:50:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86A0A8143D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A5611BF5A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 12:50:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4F6AE40386
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 12:50:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F6AE40386
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7I545S7U0G6z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 12:50:08 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A5B7402D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 12:50:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A5B7402D7
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-689-jZXp2vOPMQuJhw1sFrd24g-1; Wed, 23 Aug 2023 08:50:03 -0400
X-MC-Unique: jZXp2vOPMQuJhw1sFrd24g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B5311021F8B;
 Wed, 23 Aug 2023 12:50:03 +0000 (UTC)
Received: from [10.45.225.197] (unknown [10.45.225.197])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 50FCF140E962;
 Wed, 23 Aug 2023 12:50:02 +0000 (UTC)
Message-ID: <ae56ced4-b896-868c-a9d3-80adff015612@redhat.com>
Date: Wed, 23 Aug 2023 14:50:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To: Junfeng Guo <junfeng.guo@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230817093442.2576997-2-junfeng.guo@intel.com>
 <20230817094240.2584745-1-junfeng.guo@intel.com>
 <20230817094240.2584745-13-junfeng.guo@intel.com>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <20230817094240.2584745-13-junfeng.guo@intel.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1692795006;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=znPV4nm7vcgO5uUopGTpeLRKDtCxfWbBNAD7wMQX3vs=;
 b=Mkttd7S4ZpWHxFqR0wTvFnbH84b7LHd9i/EzGd7+fPjxE1lrd5oJU/fpHLF/sD9kMPYGd3
 aK0aGWTbfKHL/gYzeiaL9LL4Y2TfVKdTOlOX1dGkEf4s2PB9JSBq3mjRpRlip8z98RaOjH
 X4ebub7EnCPMbd/scQS5DYgFBUk428Y=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Mkttd7S4
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 12/15] ice: add parser
 execution main loop
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
Cc: qi.z.zhang@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 17. 08. 23 11:42, Junfeng Guo wrote:
> Implement function ice_parser_rt_execute which perform the main
> loop of the parser.
> 
> Also include the Parser Library files into ice Makefile.
> 
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/Makefile       |  11 +
>   .../net/ethernet/intel/ice/ice_parser_rt.c    | 787 +++++++++++++++++-
>   .../net/ethernet/intel/ice/ice_parser_rt.h    |  34 +
>   3 files changed, 831 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
> index 5d89392f969b..a0c3d4804300 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -26,6 +26,17 @@ ice-y := ice_main.o	\
>   	 ice_vlan_mode.o \
>   	 ice_flex_pipe.o \
>   	 ice_flow.o	\
> +	 ice_parser.o    \
> +	 ice_imem.o      \
> +	 ice_pg_cam.o    \
> +	 ice_metainit.o  \
> +	 ice_bst_tcam.o  \
> +	 ice_ptype_mk.o  \
> +	 ice_mk_grp.o    \
> +	 ice_proto_grp.o \
> +	 ice_flg_rd.o    \
> +	 ice_xlt_kb.o    \
> +	 ice_parser_rt.o \
>   	 ice_idc.o	\
>   	 ice_devlink.o	\
>   	 ice_ddp.o	\
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.c b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
> index e898180ebee6..5fc2d4307749 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser_rt.c
> +++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
> @@ -31,6 +31,33 @@ static void _ice_rt_flag_set(struct ice_parser_rt *rt, int idx, bool val)
>   
>   	if (val)
>   		rt->gpr[ICE_GPR_FLG_IDX + y] |= (u16)BIT(x);
> +	else
> +		rt->gpr[ICE_GPR_FLG_IDX + y] &= ~(u16)BIT(x);
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set parser flag %d value %d\n",
> +		  idx, val);
> +}
> +
> +static void _ice_rt_gpr_set(struct ice_parser_rt *rt, int idx, u16 val)
> +{
> +	if (idx == ICE_GPR_HO_IDX)
> +		_ice_rt_ho_set(rt, val);
> +	else
> +		rt->gpr[idx] = val;
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set GPR %d value %d\n",
> +		  idx, val);
> +}
> +
> +static void _ice_rt_err_set(struct ice_parser_rt *rt, int idx, bool val)
> +{
> +	if (val)
> +		rt->gpr[ICE_GPR_ERR_IDX] |= (u16)BIT(idx);
> +	else
> +		rt->gpr[ICE_GPR_ERR_IDX] &= ~(u16)BIT(idx);
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set parser error %d value %d\n",
> +		  idx, val);
>   }
>   
>   /**
> @@ -80,6 +107,666 @@ void ice_parser_rt_pktbuf_set(struct ice_parser_rt *rt, const u8 *pkt_buf,
>   	memcpy(&rt->gpr[ICE_GPR_HV_IDX], &rt->pkt_buf[ho], ICE_GPR_HV_SIZE);
>   }
>   
> +static void _ice_bst_key_init(struct ice_parser_rt *rt,
> +			      struct ice_imem_item *imem)
> +{
> +	u8 tsr = (u8)rt->gpr[ICE_GPR_TSR_IDX];
> +	u16 ho = rt->gpr[ICE_GPR_HO_IDX];
> +	u8 *key = rt->bst_key;
> +	int idd, i;
> +
> +	idd = ICE_BST_TCAM_KEY_SIZE - 1;
> +	if (imem->b_kb.tsr_ctrl)
> +		key[idd] = (u8)tsr;
> +	else
> +		key[idd] = imem->b_kb.prio;
> +
> +	idd = ICE_BST_KEY_TCAM_SIZE - 1;
> +	for (i = idd; i >= 0; i--) {
> +		int j;
> +
> +		j = ho + idd - i;
> +		if (j < ICE_PARSER_MAX_PKT_LEN)
> +			key[i] = rt->pkt_buf[ho + idd - i];
> +		else
> +			key[i] = 0;
> +	}
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generated Boost TCAM Key:\n");
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X\n",
> +		  key[0], key[1], key[2], key[3], key[4],
> +		  key[5], key[6], key[7], key[8], key[9],
> +		  key[10], key[11], key[12], key[13], key[14],
> +		  key[15], key[16], key[17], key[18], key[19]);
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "\n");
> +}
> +
> +static u8 _ice_bit_rev_u8(u8 v)
> +{
> +	u8 r = 0;
> +	int i;
> +
> +	for (i = 0; i < BITS_PER_BYTE; i++) {
> +		r |= (u8)((v & BIT(1)) << (BITS_PER_BYTE - 1 - i));

Previously you had 0x1 as mask so BIT(0) should be used here instead of 
BIT(1) which is (1 << 1) == 0x2.

But instead of this function you can use existing bitrev8() from 
<linux/bitrev.h> for free.

> +		v >>= 1;
> +	}
> +
> +	return r;
> +}
> +
> +static u8 _ice_bit_rev_u16(u16 v, int len)
> +{
> +	u16 r = 0;
> +	int i;
> +
> +	for (i = 0; i < len; i++) {
> +		r |= (u16)((v & BIT(1)) << (len - 1 - i));
> +		v >>= 1;
> +	}
> +
> +	return r;
> +}

A little bit weird... you are reversing 16bit value but returning just 8 
bits value (u8). Is it correct?

Anyway you can implement that function using bitrev16() this way:

static inline u16 _ice_bit_rev_u16(u16 v, int len)
{
	return bitrev16(v) >> (BITS_PER_TYPE(v) - len);
}

> +
> +static u32 _ice_bit_rev_u32(u32 v, int len)
> +{
> +	u32 r = 0;
> +	int i;
> +
> +	for (i = 0; i < len; i++) {
> +		r |= (u32)((v & BIT(1)) << (len - 1 - i));
> +		v >>= 1;
> +	}
> +
> +	return r;
> +}

Similarly:

static inline u32 _ice_bit_rev_u32(u32 v, int len)
{
	return bitrev32(v) >> (BITS_PER_TYPE(v) - len);
}

> +
> +static u32 _ice_hv_bit_sel(struct ice_parser_rt *rt, int start, int len)
> +{
> +	u8 b[ICE_NPKB_HV_SIZE];
> +	u64 d64, msk;
> +	int i;
> +
> +	int offset = ICE_GPR_HV_IDX + start / BITS_PER_WORD;
> +
> +	memcpy(b, &rt->gpr[offset], ICE_NPKB_HV_SIZE);

If you have start > 0 then you will copy data from area after rt->gpr 
that could be unsafe.

> +
> +	for (i = 0; i < ICE_NPKB_HV_SIZE; i++)
> +		b[i] = _ice_bit_rev_u8(b[i]);
> +
> +	d64 = *(u64 *)b;

Additionally you are interested only in 8 bytes (u64) so it does not 
make sense to copy and bit-reverse whole NPKB_HV array (32 bytes).

> +	msk = BITMAP_MASK(len);
> +
> +	return _ice_bit_rev_u32((u32)((d64 >> (start % BITS_PER_WORD)) & msk),
> +				len);

Mask is not needed here... _ice_bit_rev_u32() removes unneeded bits by 
shifting.

Whole function could look like (with comments that should be removed - 
just FYI):

static u32 _ice_hv_bit_sel(struct ice_parser_rt *rt, int start, int len)
{
	int offset;
	u32 buf[2];
	u64 val;

	/* compute offset in gpr array */
	offset = ICE_GPR_HV_IDX + start / BITS_PER_TYPE(u16);

	/* copy just 8 bytes */
	memcpy(b, &rt->gpr[offset], sizeof(buf));

	/* bit-reverse 4 bytes at once - 2 times as we have 2 u32s */
	buf[0] = bitrev8x4(buf[0]);
	buf[1] = bitrev8x4(buf[1]);

	/* load as 64 bit value */
	val = *(u64 *)buf;

	/* shift away unwanted bits */
	val >>= start % BITS_PER_TYPE(u16);

	/* return bit-reversed 'len' bits */
	return _ice_bit_rev_u32(val, len);
}

> +}
> +
> +static u32 _ice_pk_build(struct ice_parser_rt *rt,
> +			 struct ice_np_keybuilder *kb)
> +{
> +	if (kb->opc == ICE_NPKB_OPC_EXTRACT)
> +		return _ice_hv_bit_sel(rt, kb->start_reg0, kb->len_reg1);
> +	else if (kb->opc == ICE_NPKB_OPC_BUILD)
> +		return rt->gpr[kb->start_reg0] |
> +		       ((u32)rt->gpr[kb->len_reg1] << BITS_PER_WORD);
> +	else if (kb->opc == ICE_NPKB_OPC_BYPASS)
> +		return 0;
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Unsupported opc %d\n", kb->opc);
> +	return U32_MAX;
> +}
> +
> +static bool _ice_flag_get(struct ice_parser_rt *rt, int index)
> +{
> +	int y = index / ICE_GPR_FLG_SIZE;
> +	int x = index % ICE_GPR_FLG_SIZE;
> +
> +	return (rt->gpr[ICE_GPR_FLG_IDX + y] & (u16)BIT(x)) != 0;
> +}
> +
> +static void _ice_imem_pgk_init(struct ice_parser_rt *rt,
> +			       struct ice_imem_item *imem)
> +{
> +	memset(&rt->pg_key, 0, sizeof(rt->pg_key));
> +	rt->pg_key.next_proto = _ice_pk_build(rt, &imem->np_kb);
> +
> +	if (imem->pg_kb.flag0_ena)
> +		rt->pg_key.flag0 = _ice_flag_get(rt, imem->pg_kb.flag0_idx);
> +	if (imem->pg_kb.flag1_ena)
> +		rt->pg_key.flag1 = _ice_flag_get(rt, imem->pg_kb.flag1_idx);
> +	if (imem->pg_kb.flag2_ena)
> +		rt->pg_key.flag2 = _ice_flag_get(rt, imem->pg_kb.flag2_idx);
> +	if (imem->pg_kb.flag3_ena)
> +		rt->pg_key.flag3 = _ice_flag_get(rt, imem->pg_kb.flag3_idx);
> +
> +	rt->pg_key.alu_reg = rt->gpr[imem->pg_kb.alu_reg_idx];
> +	rt->pg_key.node_id = rt->gpr[ICE_GPR_NN_IDX];
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generate Parse Graph Key: node_id(%d),flag0(%d), flag1(%d), flag2(%d), flag3(%d), boost_idx(%d), alu_reg(0x%04x), next_proto(0x%08x)\n",
> +		  rt->pg_key.node_id,
> +		  rt->pg_key.flag0,
> +		  rt->pg_key.flag1,
> +		  rt->pg_key.flag2,
> +		  rt->pg_key.flag3,
> +		  rt->pg_key.boost_idx,
> +		  rt->pg_key.alu_reg,
> +		  rt->pg_key.next_proto);
> +}
> +
> +static void _ice_imem_alu0_set(struct ice_parser_rt *rt,
> +			       struct ice_imem_item *imem)
> +{
> +	rt->alu0 = &imem->alu0;
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU0 from imem pc %d\n",
> +		  imem->idx);
> +}
> +
> +static void _ice_imem_alu1_set(struct ice_parser_rt *rt,
> +			       struct ice_imem_item *imem)
> +{
> +	rt->alu1 = &imem->alu1;
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU1 from imem pc %d\n",
> +		  imem->idx);
> +}
> +
> +static void _ice_imem_alu2_set(struct ice_parser_rt *rt,
> +			       struct ice_imem_item *imem)
> +{
> +	rt->alu2 = &imem->alu2;
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU2 from imem pc %d\n",
> +		  imem->idx);
> +}
> +
> +static void _ice_imem_pgp_set(struct ice_parser_rt *rt,
> +			      struct ice_imem_item *imem)
> +{
> +	rt->pg_pri = imem->pg_pri;
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load PG priority %d from imem pc %d\n",
> +		  rt->pg_pri, imem->idx);
> +}
> +
> +static void _ice_bst_pgk_init(struct ice_parser_rt *rt,
> +			      struct ice_bst_tcam_item *bst)
> +{
> +	memset(&rt->pg_key, 0, sizeof(rt->pg_key));
> +	rt->pg_key.boost_idx = bst->hit_idx_grp;
> +	rt->pg_key.next_proto = _ice_pk_build(rt, &bst->np_kb);
> +
> +	if (bst->pg_kb.flag0_ena)
> +		rt->pg_key.flag0 = _ice_flag_get(rt, bst->pg_kb.flag0_idx);
> +	if (bst->pg_kb.flag1_ena)
> +		rt->pg_key.flag1 = _ice_flag_get(rt, bst->pg_kb.flag1_idx);
> +	if (bst->pg_kb.flag2_ena)
> +		rt->pg_key.flag2 = _ice_flag_get(rt, bst->pg_kb.flag2_idx);
> +	if (bst->pg_kb.flag3_ena)
> +		rt->pg_key.flag3 = _ice_flag_get(rt, bst->pg_kb.flag3_idx);
> +
> +	rt->pg_key.alu_reg = rt->gpr[bst->pg_kb.alu_reg_idx];
> +	rt->pg_key.node_id = rt->gpr[ICE_GPR_NN_IDX];
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generate Parse Graph Key: node_id(%d),flag0(%d), flag1(%d), flag2(%d), flag3(%d), boost_idx(%d), alu_reg(0x%04x), next_proto(0x%08x)\n",
> +		  rt->pg_key.node_id,
> +		  rt->pg_key.flag0,
> +		  rt->pg_key.flag1,
> +		  rt->pg_key.flag2,
> +		  rt->pg_key.flag3,
> +		  rt->pg_key.boost_idx,
> +		  rt->pg_key.alu_reg,
> +		  rt->pg_key.next_proto);
> +}
> +
> +static void _ice_bst_alu0_set(struct ice_parser_rt *rt,
> +			      struct ice_bst_tcam_item *bst)
> +{
> +	rt->alu0 = &bst->alu0;
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU0 from boost address %d\n",
> +		  bst->addr);
> +}
> +
> +static void _ice_bst_alu1_set(struct ice_parser_rt *rt,
> +			      struct ice_bst_tcam_item *bst)
> +{
> +	rt->alu1 = &bst->alu1;
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU1 from boost address %d\n",
> +		  bst->addr);
> +}
> +
> +static void _ice_bst_alu2_set(struct ice_parser_rt *rt,
> +			      struct ice_bst_tcam_item *bst)
> +{
> +	rt->alu2 = &bst->alu2;
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU2 from boost address %d\n",
> +		  bst->addr);
> +}
> +
> +static void _ice_bst_pgp_set(struct ice_parser_rt *rt,
> +			     struct ice_bst_tcam_item *bst)
> +{
> +	rt->pg_pri = bst->pg_pri;
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load PG priority %d from boost address %d\n",
> +		  rt->pg_pri, bst->addr);
> +}
> +
> +static struct ice_pg_cam_item *_ice_pg_cam_match(struct ice_parser_rt *rt)
> +{
> +	struct ice_parser *psr = rt->psr;
> +	struct ice_pg_cam_item *item;
> +
> +	item = ice_pg_cam_match(psr->pg_cam_table, ICE_PG_CAM_TABLE_SIZE,
> +				&rt->pg_key);
> +	if (item)
> +		return item;
> +
> +	item = ice_pg_cam_match(psr->pg_sp_cam_table, ICE_PG_SP_CAM_TABLE_SIZE,
> +				&rt->pg_key);
> +	return item;
> +}
> +
> +static struct ice_pg_nm_cam_item *_ice_pg_nm_cam_match(struct ice_parser_rt *rt)
> +{
> +	struct ice_parser *psr = rt->psr;
> +	struct ice_pg_nm_cam_item *item;
> +
> +	item = ice_pg_nm_cam_match(psr->pg_nm_cam_table,
> +				   ICE_PG_NM_CAM_TABLE_SIZE, &rt->pg_key);
> +
> +	if (item)
> +		return item;
> +
> +	item = ice_pg_nm_cam_match(psr->pg_nm_sp_cam_table,
> +				   ICE_PG_NM_SP_CAM_TABLE_SIZE,
> +				   &rt->pg_key);
> +	return item;
> +}
> +
> +static void _ice_gpr_add(struct ice_parser_rt *rt, int idx, u16 val)
> +{
> +	rt->pu.gpr_val_upd[idx] = true;
> +	rt->pu.gpr_val[idx] = val;
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Pending update for register %d value %d\n",
> +		  idx, val);
> +}
> +
> +static void _ice_pg_exe(struct ice_parser_rt *rt)
> +{
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ParseGraph action ...\n");
> +
> +	_ice_gpr_add(rt, ICE_GPR_NP_IDX, rt->action->next_pc);
> +	_ice_gpr_add(rt, ICE_GPR_NN_IDX, rt->action->next_node);
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ParseGraph action done.\n");
> +}
> +
> +static void _ice_flg_add(struct ice_parser_rt *rt, int idx, bool val)
> +{
> +	rt->pu.flg_msk |= BIT(idx);
> +	if (val)
> +		rt->pu.flg_val |= BIT(idx);
> +	else
> +		rt->pu.flg_val &= ~BIT(idx);
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Pending update for flag %d value %d\n",
> +		  idx, val);
> +}
> +
> +static void _ice_flg_update(struct ice_parser_rt *rt, struct ice_alu *alu)
> +{
> +	int i;
> +
> +	if (!alu->dedicate_flags_ena)
> +		return;
> +
> +	if (alu->flags_extr_imm)
> +		for (i = 0; i < alu->dst_len; i++)
> +			_ice_flg_add(rt, alu->dst_start + i,
> +				     (alu->flags_start_imm & BIT(i)) != 0);
> +	else
> +		for (i = 0; i < alu->dst_len; i++)
> +			_ice_flg_add(rt, alu->dst_start + i,
> +				     _ice_hv_bit_sel(rt,
> +						     alu->flags_start_imm + i,
> +						     1) != 0);
> +}
> +
> +static void _ice_po_update(struct ice_parser_rt *rt, struct ice_alu *alu)
> +{
> +	if (alu->proto_offset_opc == ICE_PO_OFF_HDR_ADD)
> +		rt->po = (u16)(rt->gpr[ICE_GPR_HO_IDX] + alu->proto_offset);
> +	else if (alu->proto_offset_opc == ICE_PO_OFF_HDR_SUB)
> +		rt->po = (u16)(rt->gpr[ICE_GPR_HO_IDX] - alu->proto_offset);
> +	else if (alu->proto_offset_opc == ICE_PO_OFF_REMAIN)
> +		rt->po = rt->gpr[ICE_GPR_HO_IDX];
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Update Protocol Offset = %d\n",
> +		  rt->po);
> +}
> +
> +static u16 _ice_reg_bit_sel(struct ice_parser_rt *rt, int reg_idx,
> +			    int start, int len)
> +{
> +	u8 b[ICE_ALU_REG_SIZE];
> +	u8 v[ICE_ALU_REG_SIZE];
> +	u32 d32, msk;
> +	int i;
> +
> +	memcpy(b, &rt->gpr[reg_idx + start / BITS_PER_WORD], ICE_ALU_REG_SIZE);
> +
> +	for (i = 0; i < ICE_ALU_REG_SIZE; i++)
> +		v[i] = _ice_bit_rev_u8(b[i]);
> +
> +	d32 = *(u32 *)v;
> +	msk = BITMAP_MASK(len);
> +
> +	return _ice_bit_rev_u16((u16)((d32 >> (start % BITS_PER_WORD)) & msk),
> +				len);
> +}

Similarly but more simplier than for _ice_hv_bit_sel():

static u16 _ice_reg_bit_sel(struct ice_parser_rt *rt, int reg_idx,
			    int start, int len)
{
	int offset;
	u32 val;

	/* compute offset in gpr array */
	offset = ICE_GPR_HV_IDX + start / BITS_PER_TYPE(u16);

#ifndef MORE_SIMPLIER
	/* copy just 4 bytes - single u32 */
	memcpy(&val, &rt->gpr[offset], sizeof(val));

	/* bit-reverse 4 bytes at once */
	val = bitrev8x4(val);
#else
	/* the same in one step but more ugly */
	val = bitrev8x4(*(u32 *)&rt->gpr[offset]);
#endif

	/* shift away unwanted bits */
	val >>= start % BITS_PER_TYPE(u16);

	/* return bit-reversed 'len' bits */
	return _ice_bit_rev_u16(val, len);
}

> +
> +static void _ice_err_add(struct ice_parser_rt *rt, int idx, bool val)
> +{
> +	rt->pu.err_msk |= (u16)BIT(idx);
> +	if (val)
> +		rt->pu.flg_val |= (u64)BIT_ULL(idx);
> +	else
> +		rt->pu.flg_val &= ~(u64)BIT_ULL(idx);
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Pending update for error %d value %d\n",
> +		  idx, val);
> +}
> +
> +static void _ice_dst_reg_bit_set(struct ice_parser_rt *rt, struct ice_alu *alu,
> +				 bool val)
> +{
> +	u16 flg_idx;
> +
> +	if (alu->dedicate_flags_ena) {
> +		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "DedicatedFlagsEnable should not be enabled in opcode %d\n",
> +			  alu->opc);
> +		return;
> +	}
> +
> +	if (alu->dst_reg_id == ICE_GPR_ERR_IDX) {
> +		if (alu->dst_start >= ICE_PARSER_ERR_NUM) {
> +			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Invalid error %d\n",
> +				  alu->dst_start);
> +			return;
> +		}
> +		_ice_err_add(rt, alu->dst_start, val);
> +	} else if (alu->dst_reg_id >= ICE_GPR_FLG_IDX) {
> +		flg_idx = (u16)(((alu->dst_reg_id - ICE_GPR_FLG_IDX) << 4) +
> +				alu->dst_start);
> +
> +		if (flg_idx >= ICE_PARSER_FLG_NUM) {
> +			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Invalid flag %d\n",
> +				  flg_idx);
> +			return;
> +		}
> +		_ice_flg_add(rt, flg_idx, val);
> +	} else {
> +		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Unexpected Dest Register Bit set, RegisterID %d Start %d\n",
> +			  alu->dst_reg_id, alu->dst_start);
> +	}
> +}
> +
> +static void _ice_alu_exe(struct ice_parser_rt *rt, struct ice_alu *alu)
> +{
> +	u16 dst, src, shift, imm;
> +
> +	if (alu->shift_xlate_sel) {
> +		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "shift_xlate_sel != 0 is not expected\n");
> +		return;
> +	}
> +
> +	_ice_po_update(rt, alu);
> +	_ice_flg_update(rt, alu);
> +
> +	dst = rt->gpr[alu->dst_reg_id];
> +	src = _ice_reg_bit_sel(rt,
> +			       alu->src_reg_id, alu->src_start, alu->src_len);
> +	shift = alu->shift_xlate_key;
> +	imm = alu->imm;
> +
> +	switch (alu->opc) {
> +	case ICE_ALU_PARK:
> +		break;
> +	case ICE_ALU_MOV_ADD:
> +		dst = (u16)((src << shift) + imm);
> +		_ice_gpr_add(rt, alu->dst_reg_id, dst);
> +		break;
> +	case ICE_ALU_ADD:
> +		dst += (u16)((src << shift) + imm);
> +		_ice_gpr_add(rt, alu->dst_reg_id, dst);
> +		break;
> +	case ICE_ALU_ORLT:
> +		if (src < imm)
> +			_ice_dst_reg_bit_set(rt, alu, true);
> +		_ice_gpr_add(rt, ICE_GPR_NP_IDX, alu->branch_addr);
> +		break;
> +	case ICE_ALU_OREQ:
> +		if (src == imm)
> +			_ice_dst_reg_bit_set(rt, alu, true);
> +		_ice_gpr_add(rt, ICE_GPR_NP_IDX, alu->branch_addr);
> +		break;
> +	case ICE_ALU_SETEQ:
> +		if (src == imm)
> +			_ice_dst_reg_bit_set(rt, alu, true);
> +		else
> +			_ice_dst_reg_bit_set(rt, alu, false);
> +		_ice_gpr_add(rt, ICE_GPR_NP_IDX, alu->branch_addr);
> +		break;
> +	case ICE_ALU_MOV_XOR:
> +		dst = (u16)((u16)(src << shift) ^ (u16)imm);
> +		_ice_gpr_add(rt, alu->dst_reg_id, dst);
> +		break;
> +	default:
> +		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Unsupported ALU instruction %d\n",
> +			  alu->opc);
> +		break;
> +	}
> +}
> +
> +static void _ice_alu0_exe(struct ice_parser_rt *rt)
> +{
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU0 ...\n");
> +	_ice_alu_exe(rt, rt->alu0);
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU0 done.\n");
> +}
> +
> +static void _ice_alu1_exe(struct ice_parser_rt *rt)
> +{
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU1 ...\n");
> +	_ice_alu_exe(rt, rt->alu1);
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU1 done.\n");
> +}
> +
> +static void _ice_alu2_exe(struct ice_parser_rt *rt)
> +{
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU2 ...\n");
> +	_ice_alu_exe(rt, rt->alu2);
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU2 done.\n");
> +}
> +
> +static void _ice_pu_exe(struct ice_parser_rt *rt)
> +{
> +	struct ice_gpr_pu *pu = &rt->pu;
> +	int i;
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Updating Registers ...\n");
> +
> +	for (i = 0; i < ICE_PARSER_GPR_NUM; i++) {
> +		if (pu->gpr_val_upd[i])
> +			_ice_rt_gpr_set(rt, i, pu->gpr_val[i]);
> +	}
> +
> +	for (i = 0; i < ICE_PARSER_FLG_NUM; i++) {
> +		if (pu->flg_msk & BIT(i))
> +			_ice_rt_flag_set(rt, i, pu->flg_val & BIT(i));
> +	}
> +
> +	for (i = 0; i < ICE_PARSER_ERR_NUM; i++) {
> +		if (pu->err_msk & BIT(1))
> +			_ice_rt_err_set(rt, i, pu->err_val & BIT(i));
> +	}
> +
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Updating Registers done.\n");
> +}
> +
> +static void _ice_alu_pg_exe(struct ice_parser_rt *rt)
> +{
> +	memset(&rt->pu, 0, sizeof(rt->pu));
> +
> +	if (rt->pg_pri == ICE_PG_P0) {
> +		_ice_pg_exe(rt);
> +		_ice_alu0_exe(rt);
> +		_ice_alu1_exe(rt);
> +		_ice_alu2_exe(rt);
> +	} else if (rt->pg_pri == ICE_PG_P1) {
> +		_ice_alu0_exe(rt);
> +		_ice_pg_exe(rt);
> +		_ice_alu1_exe(rt);
> +		_ice_alu2_exe(rt);
> +	} else if (rt->pg_pri == ICE_PG_P2) {
> +		_ice_alu0_exe(rt);
> +		_ice_alu1_exe(rt);
> +		_ice_pg_exe(rt);
> +		_ice_alu2_exe(rt);
> +	} else if (rt->pg_pri == ICE_PG_P3) {
> +		_ice_alu0_exe(rt);
> +		_ice_alu1_exe(rt);
> +		_ice_alu2_exe(rt);
> +		_ice_pg_exe(rt);
> +	}
> +
> +	_ice_pu_exe(rt);
> +
> +	if (rt->action->ho_inc == 0)
> +		return;
> +
> +	if (rt->action->ho_polarity)
> +		_ice_rt_ho_set(rt,
> +			       rt->gpr[ICE_GPR_HO_IDX] + rt->action->ho_inc);
> +	else
> +		_ice_rt_ho_set(rt,
> +			       rt->gpr[ICE_GPR_HO_IDX] - rt->action->ho_inc);
> +}
> +
> +static void _ice_proto_off_update(struct ice_parser_rt *rt)
> +{
> +	struct ice_parser *psr = rt->psr;
> +
> +	if (rt->action->is_pg) {
> +		struct ice_proto_grp_item *proto_grp =
> +			&psr->proto_grp_table[rt->action->proto_id];
> +		u16 po;
> +		int i;
> +
> +		for (i = 0; i < ICE_PROTO_COUNT_PER_GRP; i++) {
> +			struct ice_proto_off *entry = &proto_grp->po[i];
> +
> +			if (entry->proto_id == U8_MAX)
> +				break;
> +
> +			if (!entry->polarity)
> +				po = (u16)(rt->po + entry->offset);
> +			else
> +				po = (u16)(rt->po - entry->offset);
> +
> +			rt->protocols[entry->proto_id]	= true;
> +			rt->offsets[entry->proto_id]	= po;
> +
> +			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Protocol %d at offset %d\n",
> +				  entry->proto_id, po);
> +		}
> +	} else {
> +		rt->protocols[rt->action->proto_id]	= true;
> +		rt->offsets[rt->action->proto_id]	= rt->po;
> +
> +		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Protocol %d at offset %d\n",
> +			  rt->action->proto_id, rt->po);
> +	}
> +}
> +
> +static void _ice_marker_set(struct ice_parser_rt *rt, int idx)
> +{
> +	int x = idx / BITS_PER_BYTE;
> +	int y = idx % BITS_PER_BYTE;
> +
> +	rt->markers[x] |= (u8)BIT(y);
> +}
> +
> +static void _ice_marker_update(struct ice_parser_rt *rt)
> +{
> +	struct ice_parser *psr = rt->psr;
> +
> +	if (rt->action->is_mg) {
> +		struct ice_mk_grp_item *mk_grp =
> +			&psr->mk_grp_table[rt->action->marker_id];
> +		int i;
> +
> +		for (i = 0; i < ICE_MARKER_ID_NUM; i++) {
> +			u8 marker = mk_grp->markers[i];
> +
> +			if (marker == (ICE_MARKER_ID_SIZE * BITS_PER_BYTE - 1))
> +				break;
> +
> +			_ice_marker_set(rt, marker);
> +			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Marker %d\n",
> +				  marker);
> +		}
> +	} else {
> +		if (rt->action->marker_id !=
> +		    (ICE_MARKER_ID_SIZE * BITS_PER_BYTE - 1))
> +			_ice_marker_set(rt, rt->action->marker_id);
> +		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set Marker %d\n",
> +			  rt->action->marker_id);
> +	}
> +}
> +
> +static u16 _ice_ptype_resolve(struct ice_parser_rt *rt)
> +{
> +	struct ice_parser *psr = rt->psr;
> +	struct ice_ptype_mk_tcam_item *item;
> +
> +	item = ice_ptype_mk_tcam_match(psr->ptype_mk_tcam_table,
> +				       rt->markers, ICE_MARKER_ID_SIZE);
> +	if (item)
> +		return item->ptype;
> +
> +	return U16_MAX;
> +}
> +
> +static void _ice_proto_off_resolve(struct ice_parser_rt *rt,
> +				   struct ice_parser_result *rslt)
> +{
> +	int i;
> +
> +	for (i = 0; i < ICE_PO_PAIR_SIZE - 1; i++) {
> +		if (rt->protocols[i]) {
> +			rslt->po[rslt->po_num].proto_id	= (u8)i;
> +			rslt->po[rslt->po_num].offset	= rt->offsets[i];
> +			rslt->po_num++;
> +		}
> +	}
> +}
> +
> +static void _ice_result_resolve(struct ice_parser_rt *rt,
> +				struct ice_parser_result *rslt)
> +{
> +	struct ice_parser *psr = rt->psr;
> +
> +	memset(rslt, 0, sizeof(*rslt));
> +
> +	rslt->ptype = _ice_ptype_resolve(rt);
> +
> +	memcpy(&rslt->flags_psr, &rt->gpr[ICE_GPR_FLG_IDX],
> +	       ICE_PARSER_FLAG_PSR_SIZE);
> +	rslt->flags_pkt	= ice_flg_redirect(psr->flg_rd_table, rslt->flags_psr);
> +	rslt->flags_sw	= ice_xlt_kb_flag_get(psr->xlt_kb_sw, rslt->flags_pkt);
> +	rslt->flags_fd	= ice_xlt_kb_flag_get(psr->xlt_kb_fd, rslt->flags_pkt);
> +	rslt->flags_rss	= ice_xlt_kb_flag_get(psr->xlt_kb_rss, rslt->flags_pkt);
> +
> +	_ice_proto_off_resolve(rt, rslt);
> +}
> +
>   /**
>    * ice_parser_rt_execute - parser execution routine
>    * @rt: pointer to the parser runtime
> @@ -88,5 +775,103 @@ void ice_parser_rt_pktbuf_set(struct ice_parser_rt *rt, const u8 *pkt_buf,
>   int ice_parser_rt_execute(struct ice_parser_rt *rt,
>   			  struct ice_parser_result *rslt)
>   {
> -	return ICE_ERR_NOT_IMPL;
> +	struct ice_pg_nm_cam_item *pg_nm_cam;
> +	struct ice_parser *psr = rt->psr;
> +	struct ice_pg_cam_item *pg_cam;
> +	int status = 0;
> +	u16 node;
> +	u16 pc;
> +
> +	node = rt->gpr[ICE_GPR_NN_IDX];
> +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Start with Node: %d\n", node);
> +
> +	while (true) {
> +		struct ice_bst_tcam_item *bst;
> +		struct ice_imem_item *imem;
> +
> +		pc = rt->gpr[ICE_GPR_NP_IDX];
> +		imem = &psr->imem_table[pc];
> +		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load imem at pc: %d\n",
> +			  pc);
> +
> +		_ice_bst_key_init(rt, imem);
> +		bst = ice_bst_tcam_match(psr->bst_tcam_table, rt->bst_key);
> +
> +		if (!bst) {
> +			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "No Boost TCAM Match\n");
> +			_ice_imem_pgk_init(rt, imem);
> +			_ice_imem_alu0_set(rt, imem);
> +			_ice_imem_alu1_set(rt, imem);
> +			_ice_imem_alu2_set(rt, imem);
> +			_ice_imem_pgp_set(rt, imem);
> +		} else {
> +			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Boost TCAM Match address: %d\n",
> +				  bst->addr);
> +			if (imem->b_m.pg) {
> +				_ice_bst_pgk_init(rt, bst);
> +				_ice_bst_pgp_set(rt, bst);
> +			} else {
> +				_ice_imem_pgk_init(rt, imem);
> +				_ice_imem_pgp_set(rt, imem);
> +			}
> +
> +			if (imem->b_m.alu0)
> +				_ice_bst_alu0_set(rt, bst);
> +			else
> +				_ice_imem_alu0_set(rt, imem);
> +
> +			if (imem->b_m.alu1)
> +				_ice_bst_alu1_set(rt, bst);
> +			else
> +				_ice_imem_alu1_set(rt, imem);
> +
> +			if (imem->b_m.alu2)
> +				_ice_bst_alu2_set(rt, bst);
> +			else
> +				_ice_imem_alu2_set(rt, imem);
> +		}
> +
> +		rt->action = NULL;
> +		pg_cam = _ice_pg_cam_match(rt);
> +		if (!pg_cam) {
> +			pg_nm_cam = _ice_pg_nm_cam_match(rt);
> +			if (pg_nm_cam) {
> +				ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Match ParseGraph Nomatch CAM Address %d\n",
> +					  pg_nm_cam->idx);
> +				rt->action = &pg_nm_cam->action;
> +			}
> +		} else {
> +			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Match ParseGraph CAM Address %d\n",
> +				  pg_cam->idx);
> +			rt->action = &pg_cam->action;
> +		}
> +
> +		if (!rt->action) {
> +			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Failed to match ParseGraph CAM, stop parsing.\n");
> +			status = -EINVAL;
> +			break;
> +		}
> +
> +		_ice_alu_pg_exe(rt);
> +		_ice_marker_update(rt);
> +		_ice_proto_off_update(rt);
> +
> +		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Go to node %d\n",
> +			  rt->action->next_node);
> +
> +		if (rt->action->is_last_round) {
> +			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Last Round in ParseGraph Action, stop parsing.\n");
> +			break;
> +		}
> +
> +		if (rt->gpr[ICE_GPR_HO_IDX] >= rt->pkt_len) {
> +			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Header Offset %d is larger than packet len %d, stop parsing\n",
> +				  rt->gpr[ICE_GPR_HO_IDX], rt->pkt_len);
> +			break;
> +		}
> +	}
> +
> +	_ice_result_resolve(rt, rslt);
> +
> +	return status;
>   }
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.h b/drivers/net/ethernet/intel/ice/ice_parser_rt.h
> index 3f60caefaf8a..2e71c3dd217b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser_rt.h
> +++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.h
> @@ -20,6 +20,29 @@ struct ice_parser_ctx;
>   #define ICE_PARSER_MAX_PKT_LEN	504
>   #define ICE_PARSER_PKT_REV	32
>   #define ICE_PARSER_GPR_NUM	128
> +#define ICE_PARSER_FLG_NUM	64
> +#define ICE_PARSER_ERR_NUM	16
> +#define ICE_BST_KEY_SIZE	10
> +#define ICE_MARKER_ID_SIZE	9
> +#define ICE_MARKER_ID_NUM	8
> +#define ICE_PO_PAIR_SIZE	256
> +
> +struct ice_gpr_pu {
> +	/* array of flags to indicate if GRP needs to be updated */
> +	bool gpr_val_upd[ICE_PARSER_GPR_NUM];
> +	u16 gpr_val[ICE_PARSER_GPR_NUM];
> +	u64 flg_msk;
> +	u64 flg_val;
> +	u16 err_msk;
> +	u16 err_val;
> +};
> +
> +enum ice_pg_pri {
> +	ICE_PG_P0	= 0,
> +	ICE_PG_P1	= 1,
> +	ICE_PG_P2	= 2,
> +	ICE_PG_P3	= 3,
> +};
>   
>   struct ice_parser_rt {
>   	struct ice_parser *psr;
> @@ -27,6 +50,17 @@ struct ice_parser_rt {
>   	u8 pkt_buf[ICE_PARSER_MAX_PKT_LEN + ICE_PARSER_PKT_REV];
>   	u16 pkt_len;
>   	u16 po;
> +	u8 bst_key[ICE_BST_KEY_SIZE];
> +	struct ice_pg_cam_key pg_key;
> +	struct ice_alu *alu0;
> +	struct ice_alu *alu1;
> +	struct ice_alu *alu2;
> +	struct ice_pg_cam_action *action;
> +	u8 pg_pri;
> +	struct ice_gpr_pu pu;
> +	u8 markers[ICE_MARKER_ID_SIZE];
> +	bool protocols[ICE_PO_PAIR_SIZE];
> +	u16 offsets[ICE_PO_PAIR_SIZE];
>   };
>   
>   void ice_parser_rt_reset(struct ice_parser_rt *rt);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
